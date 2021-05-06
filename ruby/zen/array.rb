class Array
  class << self
    def greatest_from(input)
      largest = input.first
      input.each do |data|
        if sum(data) > sum(largest)
          largest = data
        end
      end
      largest
    end

    def sum(input)
      input.reduce(:+)
    end
  end
end

## Ruby built in##
# def self.greatest_from(input)
#   input.max_by{ |data| data.reduce(:+) }
# end
