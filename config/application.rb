require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module LocaleTest
  class Application < Rails::Application

    # Set Time.zone default to the specified zone and make Active Record
    # auto-convert to this zone.
    config.time_zone = 'Europe/Berlin'

    # Load all locale files.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]

    # Default locale.
    config.i18n.default_locale = :en

    # Available locales.
    config.i18n.available_locales = [:en, :es]
  end
end
