require 'prime'
class Prime

  def self.nth(candidate)
    raise PrimeError if candidate < 1 ("No way!")
    primes = 0 
    integer = 1
    while primes < candidate
      integer += 1
      primes += 1 if Prime.prime?(integer)
    end
    integer
  end
end

class PrimeError < StandardError; end



