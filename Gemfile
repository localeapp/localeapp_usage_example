source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.1.1'
gem 'pg'
gem 'puma'

gem 'rails-i18n'

gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'therubyracer', platforms: :ruby

gem 'slim-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.1'
gem 'uglifier', '>= 2.5.0'

gem 'jquery-rails'

group :development do
  group :darwin do
    gem 'rb-fsevent'
  end
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'foreman'
  gem 'localeapp'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'i18n-tasks', '~> 0.3.10'
  gem 'rspec-rails', '< 3'
  gem 'capybara', '>= 2.2.0'
  gem 'pry-rails'
end

group :test do
  gem 'selenium-webdriver'
  gem 'rspec', '< 3'
  gem 'i18n-spec'
end
