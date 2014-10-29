class Luhn
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def addends
    numbers = []
    number.to_s.reverse.split("").map(&:to_i).each_with_index do |n, i|
      if i % 2 == 0
        numbers << n
      else
        value = n * 2
        value -= 9 if value > 9
        numbers << value
      end
    end
    numbers.reverse
  end

  def checksum
    addends.reduce(0, :+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    input = number * 10
    luhn = Luhn.new(input)
    return input if luhn.valid?
    input + 10 - (luhn.checksum % 10)
  end
end

