require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wolfpack
  class Application < Rails::Application
    # config.action_dispatch.default_headers = {
    #   'Access-Control-Allow-Origin'   => '*',
    #   'Access-Control-Allow-Methods'  => 'POST, PUT, DELETE, GET, OPTIONS',
    #   'Access-Control-Request-Method' => '*',
    #   'Access-Control-Allow-Headers'  => 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    # }
    # config.active_record.raise_in_transactional_callbacks = true

    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
  end
end
