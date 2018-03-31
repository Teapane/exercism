class Example

  def self.get_chars(x)
    x.chars
  end

  def self.accumulate(x)
    get_chars(x).reduce([]) do |acc, y|
      [y] + acc
    end
  end

  def self.concatenate(x)
    accumulate(x).join("")
  end

  def self.reversed?(x)
    concatenate(x)
  end
end
