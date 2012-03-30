# Load the rails application
require File.expand_path('../application', __FILE__)

require 'will_paginate' 

#config.gem "paperclip", :version => "~> 2.7"
# Initialize the rails application
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

Glx::Application.initialize!

#ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(:default => "%Y/%m/%d")
#ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(:default => "%Y/%m/%d %H:%M:%S")