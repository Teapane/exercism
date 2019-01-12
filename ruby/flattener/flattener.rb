class Flattener

  # built in
  # ruby is nice
  def self.flatten_with_enumerable(arr)
    arr.flatten
  end

  #recursive
  def self.flatten(arr, result = [])
    arr.map do |item|
      if array?(item)
        flatten(item, result)
      else
        result << item
      end
    end
    result
  end

  #cryptic and recursive
  def self.cryptic_flatten(arr, result = [])
    arr.map {|item| array?(item) ? flatten(item, result) : result << item }
    result
  end

  def self.array?(arr)
    arr.is_a?(Array)
  end
end
