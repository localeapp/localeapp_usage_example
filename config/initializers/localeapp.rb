# To check if its defined? is not required if you use gem outside groups.
# In current demonstration we use it only within development environment due to
# that many users seems to do so.
if defined?(Rails) && Rails.env.development?

  require 'localeapp/rails'

  Localeapp.configure do |config|
    #
    # Your API key, keep it secret.
    config.api_key = ENV['LOCALEAPP_API_KEY']
    #
    # Prevent localeapp from sending translations every time they are missing.
    # config.cache_missing_translations = true
    #
    # Automatic reloading is only enabled in the development environment by
    # default and can be disabled in a similar way to polling and sending.
    # config.reloading_environments = []
    #
    # If you prefer to turn off so potentially insecure yaml is not raised.
    # config.raise_on_insecure_yaml = false
  end
end
