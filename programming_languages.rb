require 'pry'
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, com_language|
    com_language.each do |key, index|
      new_hash[key] = index
      new_hash[key][:style] = []
      end
    end

  languages.each do |style, com_language|
    com_language.each do |key, index|
      new_hash[key][:style].push(style)
    end
  end
  new_hash
end

puts reformat_languages(languages)
