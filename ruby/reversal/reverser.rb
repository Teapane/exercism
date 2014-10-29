class Reverser
  attr_reader :word

  def initiliaze(word)
    @word = word
  end

  def self.chop(word)
    word.split(' ')
  end

  def self.rearrange(word)
    word.reverse.join(' ').downcase
  end
end
