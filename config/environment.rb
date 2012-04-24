# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Chatid::Application.initialize!

require 'rdig'
require 'config/rdig_config.rb'
