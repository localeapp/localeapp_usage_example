require 'capybara/rspec'
require 'capybara/rails'

RSpec.configure do |config|
  Capybara.javascript_driver = :selenium
end
