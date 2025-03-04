#-------------------------------------------------------------------------
# Copyright (c) 2017 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class CardDavKnobSet < KnobSet

  @@payload_type          = "com.apple.carddav.account"
  @@payload_subidentifier = "carddav"
  @@is_unique             = false
  @@payload_name          = "CardDAV"

  #-------------------------------------------------------------------------

  def self.old_table_name
    return "card_dav_knob_sets"
  end

  #-------------------------------------------------------------------------

  def localized_payload_display_name(short = false)
    return I18n.t("card_dav_display_name")
  end
  
  #-------------------------------------------------------------------------

  def modify_payload_hash(payload_hash)
    return self.add_communication_service_handlers(payload_hash)
  end # modify_payload_hash

  #-------------------------------------------------------------------------

end
