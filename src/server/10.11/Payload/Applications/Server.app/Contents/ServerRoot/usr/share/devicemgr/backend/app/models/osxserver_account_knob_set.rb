#-------------------------------------------------------------------------
# Copyright (c) 2016 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class OsxserverAccountKnobSet < KnobSet

  @@payload_type          = 'com.apple.osxserver.account'
  @@payload_subidentifier = "osxserver-account"
  @@is_unique             = false
  @@payload_name          = "OS X Server Account"

  #-------------------------------------------------------------------------

  def localized_payload_display_name(short = false)
    return I18n.t("osxserver_account_display_name")
  end

  #-------------------------------------------------------------------------

end
