ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!
ActiveRecord::Migration.check_pending!

RSpec.configure do |config|

  config.fail_fast = false
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.use_transactional_fixtures = false
  config.treat_symbols_as_metadata_keys_with_true_values = true
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }
