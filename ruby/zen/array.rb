class Array

  def self.greatest_from(input)
   largest = input.first
    input.each do |data|
      if sum(data) > sum(largest)
       largest = data 
     end
    end
     return largest
  end

  def self.sum(input)
    input.reduce(:+)
  end
end 

## Alternative one-liner##
# def self.greatest_from(input)
#   input.max_by{ |data| data.reduce(:+) }
# end
