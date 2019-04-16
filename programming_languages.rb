require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, hash|
    hash.each do |name, attribute|
      new_hash[name] ||= attribute
      new_hash[name][:style] ||= []
      new_hash[name][:stype] << type
    end
  end
  new_hash
end
