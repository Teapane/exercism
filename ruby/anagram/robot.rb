class Robot

  attr_reader :direction

  def orient(input)
    if possible_directions(input)
    @direction = direction
    else
      raise ArgumentError.new    
      end  
    end
  end

  def bearing(input)
    direction
  end

  def possible_directions(input)
    unless input == :east ||
    input == :west ||
    input == :south ||
    input == :north 
  end

  def turn_right
    if input == :east
      orient(:south)
    elsif input == :south
      orient(:west)
    elsif input == :west
      orient(:north)
    else input == :north
      orient(:east)
    end
  end

  def turn_left
    if input == :north
      orient(:west)
    elsif input == :east
      orient(:north)
    elsif input == :south
      orient(:east)
    else input == :west
      orient(:south)
    end
  end

  def coordinates(input)
  end

  def advance
  end
end
