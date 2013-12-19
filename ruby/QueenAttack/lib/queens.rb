class Queens

attr_reader :white_position, :black_position

  def initialize(positions = {})
    @white_position = positions[:white] ||= [0, 3]
    @black_position = positions[:black] ||= [7, 3]
    raise ArgumentError if white_position == black_position
  end

  def to_s
  end

  def white
    white_position
  end

  def black
    black_position
  end

  def to_s
    board = Array.new(8){Array.new(8){"O"}}
    board[white_position.first][white_position.last]= "W"
    board[black_position.first][black_position.last]= "B"
    board.collect do |columns|
      columns.join(" ")
    end.join("\n")
   
  end

  def attack?
    on_row || on_column || on_diagonal
  end

  private 

  def on_row
    white_position.first == black_position.first
  end

  def on_column
    white_position.last == black_position.last
  end

  def white_pos
    white_position[1] - white_position[0]
  end

  def black_pos
    black_position[1] - black_position[0]
  end

  def on_diagonal
    white_pos - black_pos == 0
  end
end























