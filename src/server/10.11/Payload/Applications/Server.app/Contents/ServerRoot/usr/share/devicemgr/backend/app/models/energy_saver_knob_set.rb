#-------------------------------------------------------------------------
# Copyright (c) 2016 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class EnergySaverKnobSet < KnobSet

  @@payload_type          = "com.apple.MCX"
  @@payload_subidentifier = "energysaver"
  @@is_unique             = true
  @@payload_name          = "Energy Saver"

  #-------------------------------------------------------------------------

  def self.old_table_name
    return "energy_saver_knob_sets"
  end

  #-------------------------------------------------------------------------

  def localized_payload_display_name(short = false)
    return I18n.t "energy_saver_display_name"
  end

  #-------------------------------------------------------------------------

  def modify_payload_hash(input_hash)
    # We just need to rename some keys
    payload_hash = {}
    input_hash.each { |attribute, value|
      outAttr = attribute.to_s.gsub(/__/,'-').gsub(/_/,'.')
      payload_hash[outAttr] = value
    }

    return payload_hash
  end

  #-------------------------------------------------------------------------

end
