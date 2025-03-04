#-------------------------------------------------------------------------
# Copyright (c) 2013 Apple Inc. All rights reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#-------------------------------------------------------------------------

class DeviceAddLastProfileSendTime < ActiveRecord::Migration

  include MDMRecordBase

  #-------------------------------------------------------------------------

  def self.up
  	add_column    :devices, :last_profile_send_time, :timestamp

    # Copy over the value we used to use for this to the new fields
    execute "UPDATE devices SET last_profile_send_time = updated_at"
  end

  #-------------------------------------------------------------------------

end
