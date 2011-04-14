require 'yaml'

namespace :simple_i18_admin do
  desc "Import keys from yml local yml files"
  task :import => :environment do
    def navigate(node_hash, node_ary = [])
      node_hash.each do |k, v|
        current_key = node_ary + [ k ]
        if v.is_a? Hash
          navigate(v, current_key)
        else
          locale = current_key.first
          key = current_key[1..-1].join(".")        
          puts "#{current_key.join('.')}: #{v}"
          TRANSLATIONS_STORE.set current_key.join("."), v.to_json                
        end
      end
    end
    I18n.load_path.each do |yaml_path|
      hash =  YAML.load_file(yaml_path).to_hash
      navigate(hash)
    end
  end
end
