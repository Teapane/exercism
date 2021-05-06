class Isogram
  class << self
    def isogram?(input)
      uniq(input) == phrase_length(input)
    end

    def trim_word(word)
      word.gsub(/\W/, ' ').downcase
    end

    def characters(word)
      trim_word(word).chars
    end

    def uniq(word)
      characters(word).uniq.length
    end

    def phrase_length(word)
      characters(word).length
    end
  end
end
