#!/bin/sh

# Copyright (c) 2013 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#

SERVERCTL=/Applications/Server.app/Contents/ServerRoot/usr/sbin/serverctl

${SERVERCTL} destroy service=com.apple.server.stats

${SERVERCTL} enable service=com.apple.server.v2.stats

exit 0