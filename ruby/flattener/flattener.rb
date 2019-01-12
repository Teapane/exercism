class Flattener
  class << self
    # built in ruby is nice :D
    def flatten_with_enumerable(arr)
      arr.flatten.compact
    end

    #recursive
    def flatten(arr)
      arr.reduce([]) do |acc, item|
        if array?(item)
          acc + flatten(item)
        else
          acc << item
        end
      end.compact
    end


    #cryptic and recursive
    def cryptic_flatten(arr)
      arr.reduce([]) do |acc, item|
        array?(item) ? acc + cryptic_flatten(item) : acc << item
      end.compact
    end

    def array?(arr)
      arr.is_a?(Array)
    end
  end
end
