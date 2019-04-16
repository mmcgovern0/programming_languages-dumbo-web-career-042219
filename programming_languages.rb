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

