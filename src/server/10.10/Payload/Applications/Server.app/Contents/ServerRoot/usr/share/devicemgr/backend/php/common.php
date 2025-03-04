<?php
// -------------------------------------------------------------------------
// Copyright (c) 2015 Apple Inc. All rights reserved.
//
// IMPORTANT NOTE: This file is licensed only for use on Apple-branded
// computers and is subject to the terms and conditions of the Apple Software
// License Agreement accompanying the package this file is a part of.
// You may not port this file to another platform without Apple's written consent.
//-------------------------------------------------------------------------

require_once("/Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/php/utf8.php");  // For UTF8String
require_once("/Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/php/plist.php"); 
require_once("/Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/php/db.php");
require_once("/Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/php/settings.php");

$gStartTime = microtime(TRUE);
ob_start();
session_start();

// This silliness because PHP is lame about timezones
set_error_handler(function ($errno, $errstr) {
  date_default_timezone_set('UTC'); // Sets to UTC if not specified anywhere in .ini
  return TRUE;
});
date_default_timezone_get();
restore_error_handler();

set_error_handler("_exception_error_handler");
mb_language('uni');
mb_internal_encoding('UTF-8');
define ('MB_EXPECTED_ENCODINGS', 'UTF-8, ISO-8859-1');

///////////////////////////////////////////////////////////////////////////////////////
// KEEP THE FOLLOWING IN SYNC WITH DeviceManager-main.h, mdm_paths.rb AND common.sh! //
///////////////////////////////////////////////////////////////////////////////////////

define('SERVER_ROOT', '/Applications/Server.app/Contents/ServerRoot');
  define('SERVERMGR_DEVICEMGR_PATH', SERVER_ROOT.'/usr/share/servermgrd/bundles/servermgr_devicemgr.bundle');
  
define('PM_PHP_OLD_URI_ROOT',   '/devicemanagement/api/device');
define('PM_PHP_NEW_URI_ROOT',   '/devicemanagement/mdm');
define('PM_IPA_URI_ROOT',       '/devicemanagement/ipa');
define('PM_WEBAPP_URI_ROOT',    '/devicemanagement/webapi');
define('PM_LOG_DIR',            "/Library/Logs/ProfileManager");
  define('PM_PHP_LOG_FILE',     PM_LOG_DIR."/php.log");

define('SERVER_LIBRARY_PATH',   "/Library/Server");
define('PM_LIBRARY_DIR',        SERVER_LIBRARY_PATH."/ProfileManager");
  define('PM_CONFIG_DIR',       PM_LIBRARY_DIR."/Config");
    define('SERVICE_DATA_LINK', PM_CONFIG_DIR."/ServiceData");  // Defaults to a symlink to PM_LIBRARY_DIR (/Library/Server/ProfileManager/Config/ServiceData)
define('PM_DATA_DIR',           SERVICE_DATA_LINK."/Data");     // Only the "Data" directory is accessed through the symlink, everything else is always in PM_LIBRARY_DIR
  define('PM_FILE_STORE_DIR',   PM_DATA_DIR."/FileStore");

define('kSCEPCertCNPrefix', "MDM Identity Certificate:");
define('CHECK_CLIENT_CERTS', TRUE);    // ###

if (!isset($gNewURL)) $gNewURL = TRUE;

$gDefaultObscureKeys = ['AuthToken','auth_token','Data','SignerCertificates','Token','UnlockToken','_schema'];

$gPID         = getmypid();
$gStatus      = "200 OK";  // Assume OK unless we send something else
$gLogLevel    = 1;
$gClientIdent = $_SERVER['REMOTE_ADDR'];
$gLogFD       = 0;
$gLogLevel    = GetAppPreference('debugOutput', $gLogLevel);
$gLogSQL      = ($gLogLevel > 1 ? GetAppPreference('DBLogSQL', FALSE) : FALSE);

// $gErrorLog = "";
$gScriptName = basename($_SERVER['PHP_SELF']);

// We only handle PUT/POST requests, except for the "vend_*" scripts
if (strpos($gScriptName, 'vend') === FALSE && strpos($gScriptName, 'accept_invitation') === FALSE) {
  $meth = $_SERVER['REQUEST_METHOD'];
  if ($meth != 'PUT' && $meth != 'POST') {
    ProcessException(new Exception("405 Method Not Supported : $meth"));
    die;
  }
}

$uri = (isset($_SERVER['REDIRECT_SCRIPT_URI']) ? $_SERVER['REDIRECT_SCRIPT_URI'] : $_SERVER['SCRIPT_URI']);
LogElapsedTime("Time since script start: %et% [$uri]", TRUE);

LogMsg("vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv - ".$_SERVER['REQUEST_METHOD']." ".$gScriptName, 1);

if (!function_exists('apc_fetch')) LogMsg("*** APC NOT LOADED ***");
$gServerHeader = ServerHeader();

//-------------------------------------------------------------------------

function _exception_error_handler($errno, $errstr, $errfile, $errline, $errcontext)
{
  $msg = "Caught error '$errstr' of severity $errno at $errfile:$errline";
  if ($errno != E_NOTICE && $errno != E_USER_NOTICE && $errno != E_DEPRECATED && $errno != E_USER_DEPRECATED) {
    LogMsg($msg);
    throw new ErrorException($errstr, 0, $errno, $errfile, $errline);
  } elseif (!empty($errcontext)) {
    $msg .= "\nCONTEXT: ".print_r($errcontext, TRUE);
  }
  LogMsg($msg);
  return FALSE;
} // _exception_error_handler

//-------------------------------------------------------------------------

// function DumpLogToBrowser()
// {
//  global $gErrorLog;
//  $log = str_replace(array("\n", " "), array("<br/>\n", "&nbsp;"), $gErrorLog);
//  echo "<code>$log</code>";
// } // DumpLogToBrowser

//-------------------------------------------------------------------------

function CFBundleShortVersion()
{
  $version = apc_fetch("CFBundleShortversion");
  if (empty($version)) {
    $response = plist_decode_file('/Applications/Server.app/Contents/Info.plist'); 
    if (!empty($response['CFBundleShortVersionString'])) {
      $version = $response['CFBundleShortVersionString'];
      apc_store("CFBundleShortversion", $version);
    }
  }
  return $version;
} // CFBundleShortVersionString

// -------------------------------------------------------------------------

function CheckServiceEnabled()
{
  // Make sure we are in a state where we can & should service device requests. Will not return unless we should service device requests.
  $settings = GetSettings();
  if (empty($settings['service_enabled']))                              DieServiceUnavailable('Profile Manager service is turned off');
  if (empty($settings['od_active']) || empty($settings['apns_active'])) DieServiceUnavailable('Device Management is not enabled');
  if (!empty($settings['needs_initial_od_sync']))                       DieServiceUnavailable('Initial membership sync has not completed');
} // CheckServiceEnabled

//-------------------------------------------------------------------------

// Returns 1 if $v1 > $v2, -1 if $v1 < $v2 and 0 if $v1 = $v2. Only compares integer values of components.
function CompareVersionStrings($v1, $v2)
{
  $c1 = explode('.', $v1);
  $c2 = explode('.', $v2);
  $l1 = count($c1);
  $l2 = count($c2);
  for ($i = 0; $i < $l1 && $i < $l2; $i++) {
    $n1 = intval($c1[$i]);
    $n2 = intval($c2[$i]);
    if ($n1 == $n2) continue;
    return ($n1 > $n2 ? 1 : -1);
  }
  return ($l1 < $l2 ? -1 : ($l1 > $l2 ? 1 : 0));  // They're the same up to the shortest version string, so the longer one (if any) is "greater"
} // CompareVersionStrings

//-------------------------------------------------------------------------

function DieBadRequest($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("400 Bad Request".$msg);
} // DieBadRequest

//-------------------------------------------------------------------------

function DieForbidden($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("403 Forbidden".$msg);
} // DieForbidden

//-------------------------------------------------------------------------

function DieInternalError($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("500 Internal Server Error".$msg);
} // DieInternalError

//-------------------------------------------------------------------------

function DieNotFound($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("404 Not Found".$msg);
} // DieNotFound

//-------------------------------------------------------------------------

function DieServiceUnavailable($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("503 Service Unavailable".$msg);
} // DieServiceUnavailable

//-------------------------------------------------------------------------

function DieUnauthorized($msg = '')
{
  if (!empty($msg)) $msg = " - ".$msg;
  throw new Exception("401 Unauthorized".$msg);
} // DieUnauthorized

// --------------------------------------------------------------------

function GenerateUUID($obfuscate = FALSE)
{
  return dmx_uuid_generate($obfuscate);
} // GenerateUUID

//-------------------------------------------------------------------------

function GetAppPreference($key, $default = NULL)
{
  $prefs = apc_fetch("__PMPrefs", $success);
  if (!$success) {
    $prefs = dmx_parse_plist_at_path('/Library/Preferences/com.apple.ProfileManager.plist');
    if (!is_array($prefs)) $prefs = [];
    apc_store("__PMPrefs", $prefs);
  }
  if (!empty($prefs[$key])) $value = $prefs[$key];
  else $value = $default;
  LogMsg(__FUNCTION__.": Pref for '$key' = $value", 2);
  return $value;
} // GetAppPreference

//-------------------------------------------------------------------------

function GMNow()
{
  global $TIMESTAMP_DATE_FORMAT;
  return gmdate($TIMESTAMP_DATE_FORMAT);
} // GMNow

//-------------------------------------------------------------------------

function IsBoundToAD()
{  
  $isBoundToAD = FindBySQL('od_nodes', "WHERE od_node_name LIKE '/Active Directory/%' LIMIT 1", []);
  return !empty($isBoundToAD);
} // IsBoundToAD

// -------------------------------------------------------------------------

function LoadPHPSession()
{
  $valid = FALSE;
  if (isset($_SESSION['dm_user']) && is_array($_SESSION['dm_user'])) {
    // We have a session, make sure it's still valid (sessions are only vald for 10 minutes, which should be pleny of time to complete device enrollment
    if (!empty($_SESSION['dm_session_start']) && time() - $_SESSION['dm_session_start'] < 10*60) $valid = TRUE;
  }
  if (!$valid) ResetPHPSession();
  return $_SESSION['dm_user'];
} // LoadPHPSession

//-------------------------------------------------------------------------

function LogElapsedTime($msg, $in_us = FALSE)
{
  global $gStartTime;

  $et = microtime(TRUE) - $gStartTime;
  $et = ($in_us ? sprintf("%dus", $et * 1000000) : sprintf("%dms", $et * 1000));
  if (!empty($msg)) {
    $msg = str_replace("%et%", $et, $msg);
    LogMsg($msg, 1);
  } else LogMsg("Elapsed time: $et", 1);
} // LogElapsedTime

//-------------------------------------------------------------------------

function LogException($e, $level = 0)
{
  if ($e instanceof PDOException) {
    $msg = LogPDOException($e, NULL, $level);
  } else {
    $msg = $e->getMessage();
    LogMsg("EXCEPTION: $msg at\n".$e->getTraceAsString(), $level);
  }
  return $msg;
  } // LogException

// --------------------------------------------------------------------

function LogMsg($str, $level = 0)
{
  global $gErrorLog, $gLogFD, $gLogLevel, $gClientIdent, $gPID, $gPIDLogFD;
  if ($level > $gLogLevel) return;

//  $gErrorLog .= "$str\n";

  if ($gLogFD == 0) $gLogFD = fopen(PM_PHP_LOG_FILE, "a+");
  if ($gLogLevel > 3 && !isset($gPIDLogFD)) $gPIDLogFD = fopen(PM_LOG_DIR."/php-$gPID.log", 'a+');

  $time   = microtime(TRUE);
  $ms     = substr(1000+round(($time - floor($time)) * 1000.0), 1); // Add 1000 and take the last three characters to get leading zeros
  $ts     = date("M d H:i:s", $time) . ".$ms";
  $prefix = "$level::$ts [$gPID] <$gClientIdent> ";
  if ($gLogLevel > 0) {
    $bt = debug_backtrace();
    if (isset($bt[1])) {
      $p    = $bt[1];
      if (isset($p['function']) && isset($p['line'])) {
        $fn   = $p['function'];
        $file = basename($p['file']);
        $line = $p['line'];
        $str  = '{'."$fn ($file:$line)".'} '.$str;
      }
    }
  }
  if (mb_strlen($prefix) > 0) {
    $lines = explode("\n", $str);
    $str = implode("\n$prefix", $lines);
    // $str = preg_replace("/(^.*$)\n/", "$prefix${1}\n", $str);
  }
  if (substr($str, -1) != "\n") $str .=  "\n";
  fwrite($gLogFD, "$prefix$str");
  fflush($gLogFD);
  if (isset($gPIDLogFD)) {
    fwrite($gPIDLogFD, "$prefix$str");
    fflush($gPIDLogFD);
  }
  // if (isset($_SERVER["REQUEST_URI"])) $gErrorLog .= "$str<br/>\n";
  // else echo "LOG: $str\n";
} // LogMsg

function LogMsgError($str)  { LogMsg($str, 0); }
function LogMsgDebug($str)  { LogMsg($str, 2); }
function LogMsgInfo($str)   { LogMsg($str, 1); }

//-------------------------------------------------------------------------

function NormalizeGUID($value)
{
  if (empty($value)) return NULL;
  $value = preg_replace('/[^-0-9A-F]/', '', strtoupper($value));
  if (strlen($value) != 36) $value = NULL;    // A GUID is always 36 characters
  return $value;
} // NormalizeGUID

//-------------------------------------------------------------------------

function NormalizeIMEI($value)
{
  if (empty($value)) return NULL;
  $value = preg_replace('/[^0-9]/', '', $value);  // Strip all non-numeric characters
  return substr($value, 0, 2)." ".substr($value, 2, 6)." ".substr($value, 8, 6)." ".substr($value, 14);
} // NormalizeIMEI

//-------------------------------------------------------------------------

function NormalizeIncomingRequest($incoming_request)
{
  // Normalize input
  if (empty($GLOBALS['NORMALIZE_INPUTS'])) $GLOBALS['NORMALIZE_INPUTS'] = ["UDID" => "UDID", "SERIAL" => "SerialNumber", "IMEI" => "IMEI", "MEID" => "MEID", "DeviceID" => "DeviceID", "UserID" => "GUID"];

  foreach ($GLOBALS['NORMALIZE_INPUTS'] as $key => $fn) {
    if (empty($incoming_request[$key])) continue;
    $fn = "Normalize$fn";
    $incoming_request[$key] = $fn($incoming_request[$key]);
  }

  // Remove any bogus keys added by plist_decode()
  unset($incoming_request['__BOGUS__']);

  return $incoming_request;
} // NormalizeIncomingRequest

// --------------------------------------------------------------------

function NormalizeMAC($value)
{
  if (empty($value)) return NULL;
  $value = preg_replace('/[^0-9a-f]/', '', strtolower($value)); // Strip all non-numeric characters
  return substr($value, 0, 2).":".substr($value, 2, 2).":".substr($value, 4, 2).":".substr($value, 6, 2).":".substr($value, 8, 2).":".substr($value, 10, 2);
} // NormalizeMAC

//-------------------------------------------------------------------------

function NormalizeMEID($value)
{
  if (empty($value)) return NULL;
  return preg_replace('/[^0-9A-F]/', '', strtoupper($value));
} // NormalizeMEID

//-------------------------------------------------------------------------

function NormalizeSerialNumber($value)
{
  if (empty($value)) return NULL;
  return preg_replace('/[^0-9A-Z]/', '', strtoupper($value));
} // NormalizeSerialNumber

//-------------------------------------------------------------------------

function NormalizeUDID($value)
{
  if (empty($value)) return NULL;
  return preg_replace('/[^0-9a-f]/', '', strtolower($value));
} // NormalizeUDID

//-------------------------------------------------------------------------

function NormalizeUUID($value)
{
  if (empty($value)) return NULL;
  $value = preg_replace('/[^-0-9a-f]/', '', strtolower($value));
  if (strlen($value) != 36) $value = NULL;    // A UUID is always 36 characters
  return $value;
} // NormalizeUUID

//-------------------------------------------------------------------------

function ParseJSON($string, $is_hash = TRUE)
{
  if (!empty($string)) {
    $val = json_decode($string, TRUE);    // TRUE to return associative array, not object
    if ($is_hash && is_array($val) && count($val) == 1 && isset($val[0])) $val = $val[0];   // Convert this "array-wrapped" hash to just the hash
  } else $val = [];
  return $val;
} // ParseJSON

//-------------------------------------------------------------------------

function PrepareArrayObscuringValuesForKeys($a, $keys = NULL, $depth = 0)
{
  global  $gDefaultObscureKeys, $gLogLevel;
  if (!isset($keys)) $keys = $gDefaultObscureKeys;

  $replace = [];
  $all_numeric = TRUE;
  foreach ($a as $k => $v) {
    $str_key = is_string($k);
    if ($all_numeric && $str_key) $all_numeric = FALSE;
    if (is_array($v)) {
      if ($depth > $gLogLevel) {
        $l = count($v);
        $v = "<Array: $l entries beyond depth $depth>";
      } elseif ($str_key && in_array($k, $keys)) {    // If the value is in the array
        $l = count($v);
        $v = "<Array: $l entries>";
      } else $v = PrepareArrayObscuringValuesForKeys($v, $keys, $depth + 1);  // Recurse into arrays we're not replacing to look for more replacements
    } elseif ($str_key && in_array($k, $keys)) {
      if (is_string($v)) {
        $l = strlen($v);
        $v = "<BinaryString: $l bytes>";
      } else $v = "<BinaryObject>";
    }
    $replace[$k] = $v;
  } // foreach

  // Pretty-print the array
  $str = '';
  $indent = substr('                              ', 0, ($depth + 1) * 2);
  if (!$all_numeric) {
    foreach ($replace as $k => $v) {
          if (is_object($v))   $v = "<BinaryObject>";
      elseif (!is_numeric($v)) $v = "'$v'";
      if (!empty($str)) $str .= ",\n$indent'$k'=>$v";
      else              $str  =  "$indent'$k'=>$v";
    }
    $indent = substr($indent, 0, $depth * 2);
    $str = "{\n$str\n$indent}";
  } else $str = "[ ".implode(",", $replace)." ]";
  return $str;
} // PrepareArrayObscuringValuesForKeys

//-------------------------------------------------------------------------

function PrintArrayObscuringValuesForKeys($a, $keys = NULL)
{
  global  $gDefaultObscureKeys;

  if (!is_array($a)) return print_r($a, TRUE);

  if (!isset($keys)) $keys = $gDefaultObscureKeys;

  return PrepareArrayObscuringValuesForKeys($a, $keys);
} // PrintArrayObscuringValuesForKeys

//-------------------------------------------------------------------------

function ProcessException($e, $exit = TRUE, $body = null)
{
  global $gStatus, $gInTransaction;

  $msg = LogException($e);
  $errstr = preg_replace("/([1-5][0-9][0-9]) +([^-]*)-.*/", "$1 $2", $msg);
  if (strlen($errstr) < 3 || !is_numeric(substr($errstr, 0, 3))) $errstr = "500 Internal Server Error";
  $gStatus = $errstr;
  if ($exit) {
    if ($gInTransaction) RollbackTransaction(); // Throw away whatever we might have been working on
    header("Status: $errstr");
    SendFinalOutput($body ? $body : $errstr);
    $GLOBALS['DB'] = null;
    exit;
  }
  return $errstr;
} // ProcessException

//-------------------------------------------------------------------------

function ProductBuildVersion()
{
  $version = apc_fetch("ProductBuildVersion");
  if (empty($version)) {
    $response = plist_decode_file('/Applications/Server.app/Contents/ServerRoot/System/Library/CoreServices/ServerVersion.plist'); 
    if (!empty($response['ProductBuildVersion'])) {
      $version = $response['ProductBuildVersion'];
      apc_store("ProductBuildVersion", $version);
    }
  }
  return $version;
} // ProductBuildVersion

// -------------------------------------------------------------------------

function ReplaceSubstitutionVariables($obj, $device, $user = NULL)
{
  if (function_exists('apc_fetch')) {
    $kValidDeviceSubstitutionKeys = apc_fetch('kValidDeviceSubstitutionKeys', $success);
    $kValidUserSubstitutionKeys   = apc_fetch('kValidUserSubstitutionKeys',   $success);
  }
  if (empty($kValidDeviceSubstitutionKeys) || empty($kValidUserSubstitutionKeys)) {
    $kValidDeviceSubstitutionKeys = [ 'DeviceName'    => 'DeviceName',
                                      'device_name'   => 'DeviceName',
                                      'ProductName'   => 'ProductName',
                                      'product_name'  => 'ProductName',
                                      'OSVersion'     => 'OSVersion',
                                      'os_version'    => 'OSVersion',
                                      'version'       => 'OSVersion',
                                      'SerialNumber'  => 'SerialNumber',
                                      'sn'            => 'SerialNumber',
                                      'UDID'          => 'udid',
                                      'udid'          => 'udid',
                                      'IMEI'          => 'IMEI',
                                      'imei'          => 'IMEI',
                                      'MEID'          => 'MEID',
                                      'meid'          => 'MEID',
                                      'BluetoothMAC'  => 'BluetoothMAC',
                                      'bluetooth_mac' => 'BluetoothMAC',
                                      'EthernetMAC'   => 'EthernetMAC',
                                      'ethernet_mac'  => 'EthernetMAC',
                                      'WiFiMAC'       => 'WiFiMAC',
                                      'wifi_mac'      => 'WiFiMAC',
                                      'DeviceID'      => 'DeviceID' ];
    $kValidUserSubstitutionKeys =   [ 'email'         => 'email',
                                      'email_address' => 'email',
                                      'EMailAddress'  => 'email',
                                      'first_name'    => 'first_name',
                                      'FirstName'     => 'first_name',
                                      'full_name'     => 'full_name',
                                      'RealName'      => 'full_name',
                                      'guid'          => 'guid',
                                      'GeneratedID'   => 'guid',
                                      'last_name'     => 'last_name',
                                      'LastName'      => 'last_name',
                                      'job_title'     => 'job_title',
                                      'JobTitle'      => 'job_title',
                                      'mobile_phone'  => 'mobile_phone',
                                      'MobileNumber'  => 'mobile_phone',
                                      'short_name'    => 'short_name',
                                      'RecordName'    => 'short_name' ];
    if (function_exists('apc_store')) {
      apc_store('kValidDeviceSubstitutionKeys', $kValidDeviceSubstitutionKeys);
      apc_store('kValidUserSubstitutionKeys',   $kValidUserSubstitutionKeys);
    }
  }

  if (is_string($obj)) {
    if (preg_match_all('/%(\w+)%/', $obj, $matches, PREG_PATTERN_ORDER)) {
      $user_id = -1;
      foreach ($matches[1] as $key) {
        $val = NULL;
        // Look for a device substitution value first
        if (!empty($kValidDeviceSubstitutionKeys[$key])) {
          $real = $kValidDeviceSubstitutionKeys[$key];
          $val  = ($device ? CV($device, $real) : '');   // Since it's a valid key, we'll replace the token even if we can't find any data
        } elseif (!empty($kValidUserSubstitutionKeys[$key])) {
          if (!$user && $device && $user_id === -1) {
            // See if this device has an owner and load the owner's users record
            $user_id = CV($device, 'user_id');
            if ($user_id) $user = FindInDatabase('users', 'id', $user_id);
          }
          $real = $kValidUserSubstitutionKeys[$key];
          $val  = ($user ? CV($user, $real) : '');      // Since it's a valid key, we'll replace the token even if we can't find any data
        }
      
        if (!is_null($val)) {
          LogMsg("'%$key%' => '$val'", 1);
          $obj = str_replace("%$key%", $val, $obj);
        } else LogMsg("Substitution variable '%$key%' is invalid, leaving unchanged");
      } // foreach
    } // if
  } else if (is_array($obj)) {
    foreach ($obj as $k => $v) $obj[$k] = ReplaceSubstitutionVariables($v, $device, $user);
  }
  return $obj;
} // ReplaceSubstitutionVariables

// -------------------------------------------------------------------------

function ResetPHPSession()
{
  // From http://www.php.net/manual/en/function.session-destroy.php
  $_SESSION = [];
  $params = session_get_cookie_params();
  setcookie(session_name(), '', time() - 42000, $params["path"], $params["domain"], $params["secure"], $params["httponly"]);
  session_destroy();
  session_start();
  session_regenerate_id(true);
  $_SESSION['dm_session_start'] = time();
  $_SESSION['dm_user'] = [];
  return $_SESSION['dm_user'];
} // ResetPHPSession

//-------------------------------------------------------------------------

// function SendAsyncDevicemgrdRequestData($str)
// {
//   dmx_send_async_devicemgrd_request($str);
// } // SendAsyncDevicemgrdRequestHash

//-------------------------------------------------------------------------

// function SendAsyncDevicemgrdRequestHash($hash)
// {
//   $str = plist_encode_xml($hash);
//   dmx_send_async_devicemgrd_request($str);
// } // SendAsyncDevicemgrdRequestHash

//-------------------------------------------------------------------------

function SendFinalOutput($str)
{
  global $gStartTime, $gStatus, $gInTransaction, $gServerHeader;
  if ($gInTransaction) DieInternalError(__FUNCTION__.": There is an outstanding transaction on the database session!");

  $len = strlen($str);                          // NOT mb_strlen--we need bytes, not characters
  header("Content-Length: $len");
  header("X-Apple-MDM-Server: ".$gServerHeader);
  if ($len == 0) header("Connection: close", true);   // Tell the client to close the connection when we send an empty reply
  $out = ob_get_contents();
  if (!empty($out)) LogMsg("*** CAPTURED SCRIPT OUTPUT ***\n$out\n***********************");
  ob_end_clean();

  echo $str;
  @flush();
  fastcgi_finish_request();

  $dur = microtime(TRUE) - $gStartTime;
  $dur = sprintf("%dms", $dur*1000);
  $uri = (isset($_SERVER['REDIRECT_SCRIPT_URI']) ? $_SERVER['REDIRECT_SCRIPT_URI'] : $_SERVER['SCRIPT_URI']);
  LogMsg("Sent Final Output ($len bytes)\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - ".$_SERVER['PHP_SELF'], 1);
  LogMsg("Completed in $dur | $gStatus [$uri]");
  $GLOBALS['DB'] = null;
} // SendFinalOutput

//-------------------------------------------------------------------------

function SendFinalOutputFile($path, $len = nil)
{
  global $gStartTime, $gStatus, $gInTransaction, $gServerHeader;
  if ($gInTransaction) DieInternalError(__FUNCTION__.": There is an outstanding transaction on the database session!");

  if (empty($path) || !file_exists($path)) ProcessException(new Exception("404 Not Found - Output file '$path' not found"));

  if (empty($len)) $len = filesize($path);
  header("Content-Length: $len");
  header("X-Apple-MDM-Server: ".$gServerHeader);
  $out = ob_get_contents();
  if (!empty($out)) LogMsg("*** CAPTURED SCRIPT OUTPUT ***\n$out\n***********************");
  @ob_end_clean();
  @ob_flush();
  @flush();

  @ob_implicit_flush(TRUE);
  $out_len = @readfile($path);
  fastcgi_finish_request();
  if ($out_len === FALSE || $out_len != $len) LogMsg("Failed to send file '$path'. (Sent $out_len bytes, expected $len bytes.)");

  $dur = microtime(TRUE) - $gStartTime;
  $dur = sprintf("%dms", $dur*1000);
  $uri = (isset($_SERVER['REDIRECT_SCRIPT_URI']) ? $_SERVER['REDIRECT_SCRIPT_URI'] : $_SERVER['SCRIPT_URI']);
  LogMsg("Sent Final Output ($len bytes)\n^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - ".$_SERVER['PHP_SELF'], 1);
  LogMsg("Completed in $dur | $gStatus [$uri]");
  $GLOBALS['DB'] = null;
} // SendFinalOutputFile

//-------------------------------------------------------------------------

function ServerHeader()
{
  $header = apc_fetch("ServerHeader");
  if (empty($header)) {
    try{
      $bundleVersion = CFBundleShortVersion();
      $productVersion = ProductBuildVersion();
    } catch(Exception $e){
      LogException($e);
      if(!$bundleVersion) $bundleVersion = "2.2.?";
      if(!$productVersion) $productVersion = "13S?"; 
    }
    $header = "ProfileManager/$bundleVersion ($productVersion)";
    apc_store("ServerHeader", $header);       
  }
  return $header;
} // ServerHeaderString

//-------------------------------------------------------------------------

function SignData($data, $pkcs12 = NULL)
{
  if (empty($pkcs12)) $pkcs12 = GetSigningIdentity();
  if (empty($pkcs12)) {
    LogMsg("No signing certificate specified, unable to sign.");
    return $data;
  }
  $settings    = GetSettings();
  $signed_data = dmx_get_cms_signed_data(base64_decode($pkcs12), $settings['server_org_magic'], $data);

  if (empty($signed_data)) {
    LogMsg("Signing failed, using unsigned data instead.");
    return $data;
  }
  return $signed_data;
} // SignData

//-------------------------------------------------------------------------

require_once("/Applications/Server.app/Contents/ServerRoot/usr/share/devicemgr/backend/php/db.php");

// As soon as we have a connection to the DB, check if we should even be talking to devices.
CheckServiceEnabled();      // Won't return if we shouldn't service device requests
