#-------------------------------------------------------------------------
# Copyright (c) 2015 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class DirectoryKnobSet < KnobSet

  @@payload_type          = "com.apple.DirectoryService.managed"
  @@payload_subidentifier = "directory"
  @@is_unique             = false
  @@payload_name          = "Directory"

  #-------------------------------------------------------------------------

  def self.old_table_name
    return "directory_knob_sets"
  end

  #-------------------------------------------------------------------------

  def localized_payload_display_name(short = false)
    name = I18n.t("directory_display_name")
    name = sprintf(I18n.t("profile_long_display_format"), name, self.HostName) unless short
    return name
  end

  #-------------------------------------------------------------------------
  
end
