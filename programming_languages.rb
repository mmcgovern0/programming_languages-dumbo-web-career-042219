require "pry"

def reformat_languages(languages)
def reformat_languages(languages)
  language_attributes = {}

  languages.each do |type, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        language_attributes[language][:style] ||= []  
        language_attributes[language][:style] << type                                 
        if language_attributes[language][attribute].nil?
          language_attributes[language][attribute] = value
        end
      end
    end
  end
  language_attributes
end

