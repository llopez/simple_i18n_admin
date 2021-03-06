class SimpleI18nAdmin::Translation
  include ActiveModel::Validations
  include ActiveModel::Naming
  include ActiveModel::Conversion
  
  attr_accessor :locale, :key, :value

  validates :locale, :presence => true
  validates :key, :presence => true
  validates :value, :presence => true

  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end  
  
  def destroy
    I18n.backend.store.del "#{locale}.#{key}"
  end

  def save
    return false unless self.valid?

    sanitized_value = self.value.strip
    if sanitized_value == "." or sanitized_value == "," or sanitized_value == ":"
      sanitized_value = self.value.to_json
    end
    
    I18n.backend.store.set "#{self.locale}.#{self.key}", sanitized_value
    
    #I18n.backend.store_translations(self.locale, { self.key => evaluated_value }, :escape => false)
  end

  def self.search(term)
    I18n.backend.store.keys.select{|k| k.include?(term)}.collect do |key|
      key_scheme = key.split(".")
      locale = key_scheme.shift      
      self.new(:key => key_scheme.join("."), :value => I18n.backend.store.get(key), :locale => locale)
    end
  end

  def self.all
    I18n.backend.store.keys.collect do |key|
      key_scheme = key.split(".")
      locale = key_scheme.shift
      self.new(:key => key_scheme.join("."), :value => I18n.backend.store.get(key), :locale => locale)
    end
  end
  
  def self.find(key)
    if value = I18n.backend.store.get(key)
      key_scheme = key.split(".")
      locale = key_scheme.shift
      self.new(:key => key_scheme.join("."), :value => value, :locale => locale)
    else
      nil
    end
  end
    
  def to_param
    locale + "+" + key.gsub(".", "+")
  end
  
  def persisted?
    false
  end
end
