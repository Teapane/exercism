class Queue

  def initialize
    @elements = []
  end

  def self.push(x)
    @elements.push(x)
  end

  def self.pop
    @elements.pop
  end

  def self.clear

  end
end
