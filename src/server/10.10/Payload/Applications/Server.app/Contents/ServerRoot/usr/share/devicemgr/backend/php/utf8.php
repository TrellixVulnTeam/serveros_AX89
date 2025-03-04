<?php
// -------------------------------------------------------------------------
// Copyright (c) 2015 Apple Inc. All rights reserved.
//
// IMPORTANT NOTE: This file is licensed only for use on Apple-branded
// computers and is subject to the terms and conditions of the Apple Software
// License Agreement accompanying the package this file is a part of.
// You may not port this file to another platform without Apple's written consent.
//-------------------------------------------------------------------------

//-------------------------------------------------------------------------

function UTF8String($str)
{
  $enc = mb_detect_encoding($str, MB_EXPECTED_ENCODINGS, TRUE); // TRUE to use strict detection
  if ($enc != 'UTF-8') {
    if ($enc === FALSE) $enc = 'UTF-8';
    $str = mb_convert_encoding($str, 'UTF-8', $enc);
  }
    return $str;
} // UTF8String

//-------------------------------------------------------------------------