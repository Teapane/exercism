class PigLatin

  def initialize(word)
    @word = word.downcase.gsub(/[^a-z]/,'')
  end


  def self.translate(phrase)
    phrase.split(' ').map do |word|
      PigLatin.new(word).translate
    end.join(' ')
  end

  def translate
    return (word + "ay") if vowel_sound?
    start, remainder = parser
    remainder + start + "ay"
  end

  private
   attr_reader :word

  def vowel_sound?
    word.match /\A([aeiou]|y[^aeiou]|xr)/
  end

  def parser
    word.scan(/\A([^aeiou]?qu|[^aeiou]+)(.*)/).first
  end
end

