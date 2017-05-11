require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Jointhub
  class Application < Rails::Application
    config.load_defaults 5.1
    config.action_view.field_error_proc = proc { |html_tag, instance| html_tag }
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'
    config.generators do |g|
      g.test_framework :rspec, view_specs: false, helper_specs: false
    end
  end
end
