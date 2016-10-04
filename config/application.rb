require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module PhotoAlbum2
  class Application < Rails::Application
    config.action_view.field_error_proc = proc { |html_tag, instance| html_tag }
    config.time_zone = 'Asia/Tokyo'

    config.generators do |g|
      g.test_framework :rspec, view_specs: false, helper_specs: false
    end
  end
end
