#-------------------------------------------------------------------------
# Copyright (c) 2018 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

#-------------------------------------------------------------------------
class PrintingKnobSet < KnobSet
#-------------------------------------------------------------------------

  @@payload_type          = 'com.apple.mcxprinting'
  @@payload_subidentifier = 'printing'
  @@is_unique             = true
  @@payload_name          = 'Printing'

  #-------------------------------------------------------------------------

  def also_modifies;                                  return [:printers];                     end
  def localized_payload_display_name(short = false);  return I18n.t('printing_display_name'); end

#-------------------------------------------------------------------------
end # class PrintingKnobSet
#-------------------------------------------------------------------------
