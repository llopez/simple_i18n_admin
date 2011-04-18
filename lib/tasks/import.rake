require 'yaml'

namespace :simple_i18n_admin do
  desc "Import keys from yml local yml files"
  task :import => :environment do    
    I18n.backend.load_translations
  end
end
