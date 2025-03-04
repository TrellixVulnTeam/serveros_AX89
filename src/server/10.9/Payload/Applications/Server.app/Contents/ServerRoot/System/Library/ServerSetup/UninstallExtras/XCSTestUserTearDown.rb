#!/usr/bin/ruby 
#
# Copyright (c) 2013 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#
# IMPORTANT NOTE: This file is licensed only for use with the Wiki Server feature
# of the Apple Software and is subject to the terms and conditions of the Apple
# Software License Agreement accompanying the package this file is part of.
#
require 'fileutils'
userName = "_xcstest"
groupName = userName
`/usr/bin/dscl /Local/Default delete /Users/#{userName}`
`/usr/bin/dscl /Local/Default delete /Groups/#{groupName}`
FileUtils.rm_rf("/var/#{userName}")
FileUtils.rm_rf("/var/XCSControl")
`/usr/bin/security delete-generic-password  -a #{userName} -s xcode /Library/Keychains/System.keychain`
