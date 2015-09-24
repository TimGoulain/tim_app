Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send 
  config.action_mailer.raise_delivery_errors = true

  #Added following method Forgot your Password? see link above
  
  config.action_mailer.delivery_method = :mailgun
  
  config.action_mailer.mailgun_settings = {
    api_key: 'key-ce32ea340c91b0afead53d62c0e8f728',
    domain: 'sandboxd4d0b32c36804a6cb0b3a18d23319f80.mailgun.org'
  }
  
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.action_mailer.default_url_options = { host: "localhost:3000" }
  
  # Disable logging
  config.logger = ActiveSupport::Logger.new(nil)
  
  #Paperclip
  Paperclip.options[:command_path] = "/usr/bin/"
  
end
