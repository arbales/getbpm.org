require 'test/unit'
require 'rubygems'
require 'action_controller'
require 'active_support'
require 'active_support/test_case'
Dir["lib/*.rb"].each {|r| require File.expand_path(r) }

ActionController::Base.perform_caching = "true"
RAILS_ROOT = "/"