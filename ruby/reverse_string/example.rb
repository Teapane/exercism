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

  def one_liner(x)
    x.chars.reduce([]) { |acc, index| [index] + acc }.join("")
  end

  def alternate_one_liner(x)
    x.chars.reduce do |acc, index|
      [index] + acc
    end.join("")
  end
end
