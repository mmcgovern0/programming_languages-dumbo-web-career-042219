require "pry"

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |type, hash|
    hash.each do |name, attribute|
      attribute.each do |attribute, value|
        if new_hash[language].nil?
          new_hash[language] = {}
        end
      new_hash[name][:style] ||= []
      new_hash[name][:stype] << type
      
      if new_hash[language][attribute].nil?
        new_hash[language][attribute] = value
      end
    end
  end
  new_hash
end

def reformat_languages(languages)
  language_attributes = {}

  languages.each do |oo_or_functional, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}  #initiate a new hash for the value of :ruby
        end
        language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
        language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key                                
        if language_attributes[language][attribute].nil?
          language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
        end
      end
    end
  end
  language_attributes
end