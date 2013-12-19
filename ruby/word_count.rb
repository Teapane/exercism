class Phrase
  attr_reader :data

def initialize(input)
 
  @data = {}
  def count_word_in(input)
  words_from(input).each_with_object({}) do |word, collection|
   unless word.empty?
    if collection[word] 
      collection[word] += 1
    else
      collection[word] = 1
    end
  end
end

def word_count
  data
end

def words_from(input)
  words = input.downcase.gsub(", ", " ").split
  words = words.collect{|w| filter (w)}
end

end
