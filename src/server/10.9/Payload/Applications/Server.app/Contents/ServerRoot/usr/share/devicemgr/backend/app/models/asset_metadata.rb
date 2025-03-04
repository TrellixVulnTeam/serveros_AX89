#-------------------------------------------------------------------------
# Copyright (c) 2014 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class AssetMetadata < ActiveRecord::Base

#  belongs_to :mdm_target               # ITFK - mdm_target_id
  
  #-------------------------------------------------------------------------

  def self.table_name
    return "asset_metadata"
  end

  #-------------------------------------------------------------------------

  def get_attributes(extended = false)
    return self.attributes
  end

  #-------------------------------------------------------------------------
  
  include MDMDynamicAttributes  # Must include before MDMRecordBase

end
