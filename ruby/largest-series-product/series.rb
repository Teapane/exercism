require 'pry'
class Series

  attr_reader :digits
  def initialize(numeric_string)
    @digits = convert_to_digits(numeric_string)
  end

  def largest_product(length)
    if length > digits.length
      raise ArgumentError.new('Not enough digits')
    end

    products = []
    slices(length).each do |slice|
      products << slice.inject(1) do |product, n|
        product * n
      end
    end
    binding.pry
    products.sort.last
  end

  def sorted_products
    
  end

  def slices(length)
    result = []
    i = -1
    begin
      i += 1
      i2 = i + length - 1
      result << digits[i..i2]
    end while i2 < digits.size - 1
    result
  end

  private

  def convert_to_digits(s)
    s.chars.to_a.map(&:to_i)
  end
end
