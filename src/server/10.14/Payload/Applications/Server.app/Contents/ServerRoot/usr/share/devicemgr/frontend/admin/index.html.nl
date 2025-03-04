<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=EDGE"/>
    
    <script>
    var SC_benchmarkPreloadEvents = { headStart: new Date().getTime() };
    </script>

    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="default" />
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <link rel="apple-touch-icon" href="" />

    <link rel="shortcut icon" href="/devicemanagement/console/sproutcore/foundation/nl/3c1150af376045d5968a7e1bda4a57f64206c5cd/resources/images/favicon.ico" type="image/x-icon" />


    <title>
        Admin
    </title>

    <script>
    // Hard-coding this in for now.
    BUILD_INFO = {
      buildMode: 'production',
      buildNumber: '8ad5f4a683458d1fdf3c0367c8154e9dd4654acc',
      buildLocale: 'en',

      // the logical URL at which we are built, which JavaScript can use
      // to compute relative URLs to other files.
      currentUrl: "/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/index.html",

      // whether or not we are in relative URL mode.
      useRelativeUrls: false,

      styles: {
        x2: ["/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/stylesheet@2x-packed.css"],
        normal: ["/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/stylesheet-packed.css"]
      },

      images: {
        x2: ["/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/packed-1@2x.png"],
        normal: ["/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/packed-1.png"]
      }
    };
    </script>


    <script type="text/javascript">String.preferredLanguage = "en";</script>
<script type="text/javascript">
/* >>>>>>>>>> BEGIN source/core.js */
// ==========================================================================
// Project:   SproutCore - JavaScript Application Framework
// Copyright: ©2006-2011 Strobe Inc. and contributors.
//            Portions ©2008-2011 Apple Inc. All rights reserved.
// License:   Licensed under MIT license (see sproutcore.jslicense)
// ==========================================================================

// For backwards-compatibility, set up the BUILD_INFO variable if it is not already
// set, but give an error.
if (!window.BUILD_INFO) {
  BUILD_INFO = {
    // define nothing in here but a (most likely invalid) URL.
    useRelativeUrls: false,
    currentUrl: window.location.pathname
  };
}

// The core instantiation of SC:
window.SC = window.SC || {
  MODULE_INFO: {}, LAZY_INSTANTIATION: {},

  // Set some constants.
  buildMode: BUILD_INFO.buildMode,
  buildNumber: BUILD_INFO.buildNumber,
  buildLocale: BUILD_INFO.buildLocale
};

/* >>>>>>>>>> BEGIN source/system/browser.js */
// ==========================================================================
// Project:   SproutCore - JavaScript Application Framework
// Copyright: ©2006-2011 Strobe Inc. and contributors.
//            Portions ©2008-2011 Apple Inc. All rights reserved.
// License:   Licensed under MIT license (see sproutcore.jslicense)
// ==========================================================================

window.SC = window.SC || { MODULE_INFO: {}, LAZY_INSTANTIATION: {} };

SC._detectBrowser = function(userAgent, language) {
  var version, webkitVersion, iOSAgent, iOSDevice, iOSMajorVersion, iOSMinorVersion, browser = {};

  userAgent = (userAgent || navigator.userAgent).toLowerCase();
  language = language || navigator.language || navigator.browserLanguage;

  // Gibberish at the end is to determine when the browser version is done
  version = browser.version = (userAgent.match( /.*(?:rv|chrome|webkit|opera|ie)[\/: ](.+?)([ \);]|$)/ ) || [])[1];
  webkitVersion = (userAgent.match( /webkit\/(.+?) / ) || [])[1];
  iOSAgent = (userAgent.match(/\b(iPad|iPhone|iPod)/i) || []);
  iOSDevice = iOSAgent[1];
  iOSMajorVersion = iOSAgent[2];
  iOSMinorVersion = iOSAgent[3];

  /**
    @name SC.browser.isWindows
    @type Boolean
  */
  browser.windows = browser.isWindows = !!/windows/.test(userAgent);

  /**
    @name SC.browser.isMac
    @type Boolean
  */
  browser.mac = browser.isMac = !!/macintosh/.test(userAgent) || (/mac os x/.test(userAgent) && !/like mac os x/.test(userAgent));

  /**
    @name SC.browser.isLion
    @type Boolean
  */
  browser.lion = browser.isLion = !!(/mac os x 10[_\.][7-9]/.test(userAgent) && !/like mac os x 10[_\.][7-9]/.test(userAgent));
  
  /**
    @name SC.browser.isiPhone
    @type Boolean
  */
  browser.iPhone = browser.isiPhone = (iOSDevice === 'iphone');

  /**
    @name SC.browser.isiPod
    @type Boolean
  */
  browser.iPod = browser.isiPod = (iOSDevice === 'ipod');

  /**
    @name SC.browser.isiPad
    @type Boolean
  */
  browser.iPad = browser.isiPad = (iOSDevice === 'ipad');

  /**
    @name SC.browser.isiOS
    @type Boolean
  */
  browser.iOS = browser.isiOS = browser.iPhone || browser.iPod || browser.iPad;
  
  /**
    @name SC.browser.iOSMajorVersion
    @type Number
  */
  browser.iOSMajorVersion = browser.iOS ? iOSMajorVersion * 1 : undefined;
  
  /**
    @name SC.browser.iOSMinorVersion
    @type Number
  */
  browser.iOSMinorVersion = browser.iOS ? iOSMinorVersion * 1 : undefined;

  /**
    @name SC.browser.isAndroid
    @type Boolean
  */
  browser.android = browser.isAndroid = !!/android/.test(userAgent);

  /**
    @name SC.browser.isSilk
    @type Boolean
  */
  browser.silk = browser.isSilk = !!/silk/.test(userAgent);

  /**
    @name SC.browser.opera
    @type String
  */
  browser.opera = /opera/.test(userAgent) ? version : 0;

  /**
    @name SC.browser.isOpera
    @type Boolean
  */
  browser.isOpera = !!browser.opera;

  /**
    @name SC.browser.msie
    @type String
  */
  browser.msie = /msie \d+\.\d+|trident\/\d+\.\d.+; rv:\d+\.\d+[;\)]/.test(userAgent) && !browser.opera ? version : 0;

  /**
    @name SC.browser.isIE
    @type Boolean
  */
  browser.isIE = !!browser.msie;

  /**
    @name SC.browser.isIE8OrLower
    @type Boolean
  */
  browser.isIE8OrLower = !!(browser.msie && parseInt(browser.msie, 10) <= 8);

  /**
    @name SC.browser.isIE9OrLower
    @type Boolean
  */
  browser.isIE9OrLower = !!(browser.msie && parseInt(browser.msie, 10) <= 9);

  /**
    @name SC.browser.isIE10OrLower
    @type Boolean
  */
  browser.isIE10OrLower = !!(browser.msie && parseInt(browser.msie, 10) <= 10);
  /**
    @name SC.browser.isIE10
    @type Boolean
  */
  browser.isIE10 = !!(browser.msie && parseInt(browser.msie, 10) === 10);

  /**
    @name SC.browser.isIE11
    @type Boolean
  */
  browser.isIE11 = !!(browser.msie && parseInt(browser.msie, 10) === 11);
  /**
    @name SC.browser.mozilla
    @type String
  */
  browser.mozilla = /mozilla/.test(userAgent) && !/(compatible|webkit|msie|trident)/.test(userAgent) ? version : 0;

  /**
    @name SC.browser.isMozilla
    @type Boolean
  */
  browser.isMozilla = !!browser.mozilla;

  /**
    @name SC.browser.webkit
    @type String
  */
  browser.webkit = /webkit/.test(userAgent) ? webkitVersion : 0;

  /**
    @name SC.browser.isWebkit
    @type Boolean
  */
  browser.isWebkit = !!browser.webkit;

  /**
    @name SC.browser.chrome
    @type String
  */
  browser.chrome = /chrome/.test(userAgent) ? version: 0;

  /**
    @name SC.browser.isChrome
    @type Boolean
  */
  browser.isChrome = !!browser.chrome;

  /**
    @name SC.browser.mobileSafari
    @type String
  */
  browser.mobileSafari = /apple.*mobile/.test(userAgent) && browser.iOS ? webkitVersion : 0;

  /**
    @name SC.browser.isMobileSafari
    @type Boolean
  */
  browser.isMobileSafari = !!browser.mobileSafari;

  /**
    @name SC.browser.iPadSafari
    @type String
  */
  browser.iPadSafari = browser.iPad && browser.isMobileSafari ? webkitVersion : 0;

  /**
    @name SC.browser.isiPadSafari
    @type Boolean
  */
  browser.isiPadSafari = !!browser.iPadSafari;

  /**
    @name SC.browser.iPhoneSafari
    @type String
  */
  browser.iPhoneSafari = browser.iPhone && browser.isMobileSafari ? webkitVersion : 0;

  /**
    @name SC.browser.isiPhoneSafari
    @type Boolean
  */
  browser.isiPhoneSafari = !!browser.iphoneSafari;

  /**
    @name SC.browser.iPodSafari
    @type String
  */
  browser.iPodSafari = browser.iPod && browser.isMobileSafari ? webkitVersion : 0;

  /**
    @name SC.browser.isiPodSafari
    @type Boolean
  */
  browser.isiPodSafari = !!browser.iPodSafari;

  /**
    @name SC.browser.isiOSHomeScreen
    @type Boolean
  */
  browser.isiOSHomeScreen = browser.isMobileSafari && !/apple.*mobile.*safari/.test(userAgent);

  /**
    @name SC.browser.safari
    @type String
  */
  browser.safari = browser.webkit && !browser.chrome && !browser.iOS && !browser.android ? webkitVersion : 0;

  /**
    @name SC.browser.isSafari
    @type Boolean
  */
  browser.isSafari = !!browser.safari;

  /**
    @name SC.browser.language
    @type String
  */
  browser.language = language.split('-', 1)[0];

  /**
    Possible values:

      - 'msie'
      - 'mozilla'
      - 'chrome'
      - 'safari'
      - 'opera'
      - 'mobile-safari'
      - 'unknown'

    @name SC.browser.current
    @type String
    @default 'unknown'
  */
  browser.current = browser.msie ? 'msie' : browser.mozilla ? 'mozilla' : browser.chrome ? 'chrome' : browser.safari ? 'safari' : browser.opera ? 'opera' : browser.mobileSafari ? 'mobile-safari' : browser.android ? 'android' : 'unknown';
  return browser;
};


/** @class

  Contains information about the browser environment that SproutCore
  is running in. String properties, such as `SC.browser.webkit` or
  `SC.browser.msie`, will have a value that represents the browser build
  number if that browser is being used. Otherwise, they will have a
  falsey value. For convenience, Boolean counterparts for all of the
  versioned properties are provided.

  @since SproutCore 1.0
*/
SC.browser = SC._detectBrowser();

/* >>>>>>>>>> BEGIN source/system/bench.js */
// ==========================================================================
// Project:   SproutCore - JavaScript Application Framework
// Copyright: ©2006-2011 Strobe Inc. and contributors.
//            Portions ©2008-2011 Apple Inc. All rights reserved.
// License:   Licensed under MIT license (see sproutcore.jslicense)
// ==========================================================================
/*global SC_benchmarkPreloadEvents*/
// 
if (typeof SC_benchmarkPreloadEvents !== "undefined") {
  SC.benchmarkPreloadEvents = SC_benchmarkPreloadEvents;
  SC_benchmarkPreloadEvents = undefined;
} else {
  SC.benchmarkPreloadEvents = { headStart: new Date().getTime() };
}

/* >>>>>>>>>> BEGIN source/system/loader.js */
// ==========================================================================
// Project:   SproutCore - JavaScript Application Framework
// Copyright: ©2006-2011 Strobe Inc. and contributors.
//            Portions ©2008-2011 Apple Inc. All rights reserved.
// License:   Licensed under MIT license (see sproutcore.jslicense)
// ==========================================================================

// 

SC.setupBodyClassNames = function() {
  var el = document.body,
      browser, platform, shadows, borderRad, classNames, style, ieVersion;
  if (!el) return ;
  
  browser = SC.browser.current ;
  platform = SC.browser.windows ? 'windows' : SC.browser.mac ? 'mac' : 'other-platform' ;
  style = document.documentElement.style;
  shadows = (style.MozBoxShadow !== undefined) || 
                (style.webkitBoxShadow !== undefined) ||
                (style.oBoxShadow !== undefined) ||
                (style.boxShadow !== undefined);
  
  borderRad = (style.MozBorderRadius !== undefined) || 
              (style.webkitBorderRadius !== undefined) ||
              (style.oBorderRadius !== undefined) ||
              (style.borderRadius !== undefined);
  
  classNames = el.className ? el.className.split(' ') : [] ;
  if(shadows) classNames.push('box-shadow');
  if(borderRad) classNames.push('border-rad');
  classNames.push(browser, platform) ;
  
  ieVersion = parseInt(SC.browser.msie,10);
  if (ieVersion) {
    if (ieVersion === 7) {
      classNames.push('ie7');
    } 
    else if (ieVersion === 8) {
      classNames.push('ie8');
    }
    else if (ieVersion === 9) {
      classNames.push('ie9');
    }
    else if (ieVersion === 10) {
      classNames.push('ie10');
    }
  }
  
  if(browser==="safari" || browser==="chrome") classNames.push('webkit');
  if (SC.browser.mobileSafari) classNames.push('mobile-safari') ;
  if ('createTouch' in document) classNames.push('touch');
  if (window.navigator.userAgent.toLowerCase().match(/windows nt 5.1/)) classNames.push('winxp');
  el.className = classNames.join(' ') ;
} ;




/* >>>>>>>>>> BEGIN source/system/relative_urls.js */
SC._relativeUrl_cachedCurrentUrl = (function() {
  var parts = BUILD_INFO.currentUrl.split("/");

  var idx, len = parts.length;
  for (idx = 0; idx < parts.length; idx++) {
    if (parts[idx] == '..') {
      parts.splice(idx, 1);
      parts.splice(idx - 1, 1);
      idx--;
      idx--;
    }
  }

  return parts.join("/");
})();

/**
  Creates a URL relative to this page for the given "logical" URL.
  A logical URL is how Abbot thinks of the URL; it is absolute within
  Abbot's world, but if the build output has been moved around, it will
  no longer be valid.

  By knowing both the HTML file's logical URL (BUILD_INFO.currentUrl)
  and the target logical URL, we can return a relative URL.
*/
SC.relativeUrl = function(to_url) {
  if (!BUILD_INFO.useRelativeUrls) return to_url;

  var from_parts = SC._relativeUrl_cachedCurrentUrl.split("/");
  var to_parts = to_url.split("/");

  while (
    to_parts.length >= 1 && from_parts.length >= 1 &&
    from_parts[0] === to_parts[0]
  ) {
    from_parts.shift();
    to_parts.shift();
  }

  var ret = "";
  from_parts.pop();
  for (var idx = 0, len = from_parts.length; idx < len; idx++) {
    ret += "../";
  }

  ret += to_parts.join("/");
  return ret;
};

/**
  Converts a URL relative to this page to an absolute URL.

  We could always return absolute URLs from relativeUrl, which
  would make this largely unnecessary; however, then it would be
  rather difficult to tell if relative URLs were actually working,
  because all URLs in the page would have been replaced with non-relative
  URLs.

  This is actually a concatenation operation: concatenating the
  relative url to the current path.
*/
SC.absoluteUrl = function(relative_url) {
  // If a URL begins with /, it is, by definition, already absolute. As such, we
  // should not try to make it relative to the current page's URL.
  if (relative_url[0] === "/") return relative_url;

  var path = window.location.pathname.split("/"),
      add = relative_url.split("/"),
      len = add.length, idx;

  // if the path was to a directory (for instance, /my-app/en-us/), we
  // want to skip the trailing part and consider this to be /my-app/en-us
  if (path[path.length - 1] === "") path.pop();

  for (idx = 0; idx < len; idx++) {
    if (add[idx] == '..' && path.length > 0) path.pop();
    else path.push(add[idx]);
  }

  return path.join("/");
};

/* >>>>>>>>>> BEGIN source/system/styles.js */
(function() {
  if (!BUILD_INFO.images) return;
  
  var styles;
  if (window.devicePixelRatio == 2 || window.location.search.match(/(\?|&)2x=true/)) {
    styles = BUILD_INFO.styles.x2;
    SC.APP_IMAGE_ASSETS = BUILD_INFO.images.x2;
    BUILD_INFO.stylesDPIUsed = 2;
  } else {
    styles = BUILD_INFO.styles.normal;
    SC.APP_IMAGE_ASSETS = BUILD_INFO.images.normal;  
    BUILD_INFO.stylesDPIUsed = 1;
  }
  

  var head = document.getElementsByTagName("head")[0],
      len = styles.length, idx, css;
  for (idx = 0; idx < len; idx++) {
    css = document.createElement('link');
    css.rel   = 'stylesheet';
    css.type  = 'text/css';
    css.href  = styles[idx];
    css.media = 'screen'
    head.appendChild(css);
  }
})();


</script>

    
    
    <script>
      SC.benchmarkPreloadEvents['headEnd'] = new Date().getTime();
    </script>
  </head>

  <body class="apple-theme-v2 sc-focus">
    <script>
    SC.benchmarkPreloadEvents['bodyStart'] = new Date().getTime();
    </script>
<script type="text/javascript">
/* >>>>>>>>>> BEGIN source/setup_body_class_names.js */
// ==========================================================================
// Project:   SproutCore - JavaScript Application Framework
// Copyright: ©2006-2011 Strobe Inc. and contributors.
//            Portions ©2008-2011 Apple Inc. All rights reserved.
// License:   Licensed under MIT license (see sproutcore.jslicense)
// ==========================================================================

// This file needs to get combined into a separate file, because it is
// referenced individually from index.rhtml.
// 

if (SC.setupBodyClassNames) SC.setupBodyClassNames() ;


</script>


  <div style="display:none">    <script type="text/javascript" src="/devicemanagement/console/admin/nl/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/javascript-packed.js"></script></div>
  <script type="text/javascript" src="/devicemanagement/console/admin/common/8ad5f4a683458d1fdf3c0367c8154e9dd4654acc/javascript-packed.js"></script>


  <script>
  SC.benchmarkPreloadEvents['bodyEnd'] = new Date().getTime();
  </script>
	</body>
</html>
