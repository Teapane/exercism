class Pangram
  class << self
    def pangram?(sentence)
      sentence.chars.each do |x|
        x.include?(alphabet)
      end
    end

    def alphabet
      'abcdefghijklmnopqrstuvwxyz'
    end
  end
end
