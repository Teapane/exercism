class Phrase

  attr_reader :words

  def initialize(input)
    @words = input
  end

  def word_count
    formatted_words.each_with_object(Hash.new(0)) do |word, counter|
      counter[word] += 1
    end
  end

private

  def formatted_word
    words.downcase.scan(/\w+/)
  end

end
