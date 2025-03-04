#-------------------------------------------------------------------------
# Copyright (c) 2016 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

#-------------------------------------------------------------------------
class AdCertKnobSet < KnobSet
#-------------------------------------------------------------------------

  @@payload_type          = "com.apple.ADCertificate.managed"
  @@payload_subidentifier = "adcert"
  @@is_unique             = false
  @@payload_name          = "AD Certificate"

  #-------------------------------------------------------------------------

  def self.old_table_name
    return "ad_cert_knob_sets"
  end

  #-------------------------------------------------------------------------

  def localized_payload_display_name(short = false)
    return I18n.t("ad_cert_display_name")
  end

#-------------------------------------------------------------------------
end # AdCertKnobSet
#-------------------------------------------------------------------------
