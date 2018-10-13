# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Notes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.encoding = 'utf-8'
    config.time_zone = 'Eastern Time (US & Canada)'
    config.public_file_server.enabled
    config.autoload_paths += %W[#{config.root}/lib]
    config.require_master_key = true
    config.force_ssl = true unless Rails.env.development?

    # Email
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.perform_caching = false
    ActionMailer::Base.smtp_settings = {
      user_name: 'apikey',
      password: Rails.application.credentials.email_api,
      domain: 'mythcoders.com',
      address: 'smtp.sendgrid.net',
      port: 587,
      authentication: :plain,
      enable_starttls_auto: true
    }
  end
end
