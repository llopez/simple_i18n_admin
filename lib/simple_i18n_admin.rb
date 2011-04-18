require 'redis'
require 'will_paginate'
require 'config'

module SimpleI18nAdmin
  class Engine < Rails::Engine
    
    # Load Configuration
    config.simple_i18n_admin = ActiveSupport::OrderedOptions.new    
    config.to_prepare do
      SimpleI18nAdmin::Engine.config.simple_i18n_admin.each do |key, value|
        SimpleI18nAdmin.config.send "#{key}=".to_sym, value
      end
    end

    initializer "simple_i18n_admin.add_middleware" do |app|    
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
    
    # Setting Redis
    initializer "simple_i18n_admin.set_redis", :after => :disable_dependency_loading do
      I18n.backend = I18n::Backend::KeyValue.new(Redis.new(:db => SimpleI18nAdmin.config.db))
    end
    
  end

  def self.config
    @config ||= SimpleI18nAdmin::Config.new
    yield(@config) if block_given?
    @config    
  end
end
