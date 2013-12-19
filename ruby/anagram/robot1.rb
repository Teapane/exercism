class Robot

  attr_reader :bearing, :coordinates

  def valid_directions
    [:north, :east, :south, :west]
  end

  def orient(direction)
    if valid?(direction)
      @bearing = direction
    else
      raise ArgumentError
    end
  end

  def valid?(direction)
    valid_directions.include? direction
  end

  def turn_right
    orient(valid_directions[(valid_directions.index(bearing) + 1) % 4])
  end

  def turn_left
    orient(valid_directions[(valid_directions.index(bearing) - 1) % 4])
  end

  def at(x,y)
    @coordinates = [x,y]
  end

  def advance
    @coordinates = advance_coordinates[bearing]
  end

  def advance_coordinates
    {
      :north => [coordinates[0], coordinates[-1] + 1],
      :east => [coordinates[0] + 1, coordinates[1]],
      :west => [coordinates[0] - 1, coordinates[1]],
      :south => [coordinates[0], coordinates[1] - 1]
    }
  end

end

class Simulator

  def instructions(instruction)
    instruction.chars.map {|c| commands[c]}
  end

  def commands
    {
      "A" => :advance,
      "L" => :turn_left,
      "R" => :turn_right,
    }
  end

  def place(robot, orientation)
    robot.orient(orientation[:direction])
    robot.at(orientation[:x], orientation[:y])
  end

  def evaluate(robot, commands)
    instructions(commands).each do |command|
      robot.send(command)
    end
  end
end

money in the bank shorty what ya think! $$$$$$$$ 
 ,
: ) 
