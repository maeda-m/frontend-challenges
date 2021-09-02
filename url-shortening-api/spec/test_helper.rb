ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'capybara_helper'
Dir.glob("spec/steps/**/*step.rb") { |f| load f, true }