#-------------------------------------------------------------------------
# Copyright (c) 2013 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class CreateVpnKnobSets < ActiveRecord::Migration

  include KnobSetBase

  #-------------------------------------------------------------------------

  def self.up
    create_table :vpn_knob_sets do |t|
      KnobSetBase.add_base_table_properties(t)

      t.string  :UserDefinedName
      t.boolean :OverridePrimary
      t.string  :VPNType
      t.text    :PPP        
      t.text    :IPSec
      t.text    :VPN
      t.text    :Proxies
      t.text    :VendorConfig
    end
  end

  #-------------------------------------------------------------------------

end
