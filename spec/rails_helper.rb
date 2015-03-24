# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require 'capybara/rspec'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'shoulda/matchers'

ActiveRecord::Migration.maintain_test_schema!

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.javascript_driver = :selenium

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.around(:each, js: true) do |example|
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.cleaning do
      example.run
    end
  end

  config.infer_spec_type_from_file_location!
end
