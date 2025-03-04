##
# Copyright (c) 2009-2014 Apple Inc. All Rights Reserved.
#
# IMPORTANT NOTE: This file is licensed only for use on Apple-branded
# computers and is subject to the terms and conditions of the Apple Software
# License Agreement accompanying the package this file is a part of.
# You may not port this file to another platform without Apple's written consent.
#
# IMPORTANT NOTE: This file is licensed only for use with the Wiki Server feature
# of the Apple Software and is subject to the terms and conditions of the Apple
# Software License Agreement accompanying the package this file is part of.
##

require 'rubygems'
require 'json'

require 'collaboration/encoder_shared'

module Collaboration

  class JSONEncoder
    include EncoderShared

    def content_type
      'application/json'
    end

    def encode_object(obj)
      JSON.generate(transform_object(obj))
    end

  end

end
