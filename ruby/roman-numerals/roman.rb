require ''

class Roman

  def to_roman
   Array.new(3999) do |index|
      target = index + 1
        ROMAN_MAP.keys.sort { |a, b| b <=> a }.inject("") do |roman, div|
            times, target = target.divmod(div)
            roman << ROMAN_MAP[div] * times
    end
  end

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
