class SecretHandshake
  attr_reader :binary

  def initialize(input)
    @binary = valid_integer(input)
  end

  def valid_integer(input)
    input.kind_of?(Integer) ? to_binary(input) : []
  end

  def to_binary(input)
    input.to_s(2).chars.reverse
  end

  def value
    {
      0 => "wink",
      1 => "double blink",
      2 => "close your eyes",
      3 => "jump"
    }
  end

  def commands
    inverse? ? translation.reverse : translation
  end

  def inverse?
    binary.length == 5
  end

  def translation
    binary.length.times.map { |i|
      value[i] if binary[i] == "1"
    }.compact
  end
end
