class Rover
  DIRECTIONS = %w(N E S W)

  attr_reader :direction

  def initialize
    @x = 0
    @y = 0
    @direction = "N"
  end

  def turn_right
    case @direction
    when "N"
      @direction = "E"
    when "E"
      @direction = "S"
    when "S"
      @direction = "W"
    when "W"
      @direction = "N"
    end
  end

  def turn_left
    case @direction
    when "N"
      @direction = "W"
    when "W"
      @direction = "S"
    when "S"
      @direction = "E"
    when "E"
      @direction = "N"
    end
  end
end
