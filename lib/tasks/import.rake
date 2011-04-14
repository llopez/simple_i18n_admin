require 'yaml'

desc "Import keys from yml file"
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
  #Rails.root.join('config', 'locales', 'en.yml').to_s
  hash =  YAML.load_file("/Users/luis/programming/KedinG2r3/config/locales/es-AR.yml").to_hash
  navigate(hash)
end
