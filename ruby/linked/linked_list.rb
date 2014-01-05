require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def count
    if head.nil? 
      0
    else
    count = 1
    current = head
    while current.link
      count = count + 1
      current = current.link
    end
      return count
    end
  end

  def push(input_data)
    node = Node.new(input_data)
    if head.nil?
     @head = node
    else 
     current = head
      while current.link
        current = current.link
    end
      current.link = node
    end
  end

  def pop
    current = head
    previous = current

    while current.link
      previous = current
      current = current.link
    end
    previous.link = nil
    return current.data
  end

  def behead
    return nil unless head
    current = head
    @head = head.link
          current.data
  end

  def extract(target)
    return nil unless head 
                    current = head
                    previous = current
    
                    while current.link != nil && current.data != target
                            previous = current
                            current = current.link
                    end
                    previous.link = current.link
                    return current.data == target
        end

end
