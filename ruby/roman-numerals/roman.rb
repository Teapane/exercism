class Fixnum


  def initialize(arabic)
    @arabic = arabic
  end

  def to_s
    result = ''
    number = Integer(@arabic)
        NUMERALS.each do |value, symbol|
            while number >= value
                result += symbol
                number -= value
      end
    end

    return result
  end

    def to_i
        @arabic
    end
#end


  # def to_roman 
  #   roman_permutation.each_with_object({}) do  |(digit, roman), hash|
  #     digit.collect {|roman| hash[digit] = key}
  #   end
  # end

  def roman_permutation
    {
      1000 => 'M',
      900  => 'CM',
      500  => 'D',
      400  => 'CD',
      100  => 'C',
      90   => 'XC',
      50   => 'L',
      40   => 'XL',
      10   => 'X',
      9    => 'IX',
      5    => 'V',
      4    => 'IV',
      1    => 'I'
    }
  end
end
