require 'redis'
require 'will_paginate'

module SimpleI18nAdmin
  class Engine < Rails::Engine
    initializer "simple_i18n_admin.add_middleware" do |app|    
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
  end
end
