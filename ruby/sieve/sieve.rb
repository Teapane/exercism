require 'pry'

class Sieve
  attr_reader :range

  def initialize(max)
    @range = (2..max)
  end

  def primes
   @primes ||= find_primes
  end

  def find_primes
    input = range.to_a
    primes = []
    begin
      ending_number = input.shift
      primes << ending_number
      #binding.pry
      input.reject! { |number| number % input == 0 }
    end until input.empty?
      primes
    
  end

end
