class Robot

  attr_reader :bearing, :x, :y, :simulator

  def valid_directions
    [:north, :south, :east, :west]
  end

  def orient(new_bearing)
    if valid_directions.include?(new_bearing)
    @bearing = new_bearing
      else 
    raise ArgumentError.new("#{new bearing} is not a valid direction")
    end
   end

  def turn_right
    send ("turn_right_from_#{bearing}")
  end

  def turn_right_from_north
    orient :east
  end

  def turn_right_from_east
    orient :south
  end

  def turn_right_from_south
    orient :west
  end

  def turn_right_from_west
    orient :north
  end

  def turn_left
    send "turn_left_from_#{bearing}"
  end

  def turn_left_from_north
    orient :west
  end

  def turn_left_from_east
    orient :north
  end

  def turn_left_from_south 
    orient :east
  end

  def turn_left_from_west
    orient :south
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [x, y]
  end

  def advance
    send "advance_facing_#{bearing}"
  end

  def advance_facing_north
    @y += 1
  end

  def advance_facing_east
    @x += 1
  end

  def advance_facing_south
    @y -= 1
  end

  def advance_facing_west
    @x -= 1
  end
end
 
 class Simulator
  attr_reader :simulator, :commands

  def instructions(input)
    @instructions = instruction.split('')
    
  end


end

# module FourWayMap
#   def self.valid_directions
#     [:north, :south, :east, :west]
#   end

#   def self.right_from_north
#     orient :east
#   end

#   def self.right_from_east
#     orient :south
#   end

#   def self.right_from_south
#     orient :west
#   end

#   def self.right_from_west
#     orient :north
#   end
#   end





  # def turn_right
  #  if bearing == :north
  #    orient :east
  #   elsif bearing == :east
  #     orient :south
  #   elsif bearing == :west
  #     orient :north
  #   elsif bearing == :south
  #     orient :west
  #   end
  # end

  # def turn_left
  #   bearing_index = valid_directions.index(bearing)
  #   desired_bearing_index = bearing_index - 1
  #   orient (valid_directions[desired_bearing_index])
  # end




