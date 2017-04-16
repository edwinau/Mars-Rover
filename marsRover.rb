# option 1
# what if a class is used to control location?
# the class instace has a position...
# the instace can turn 90 degrees
# the instance can move one space
# the rover has a single location instance Mars has a Location

# option 2
# Mars hs methods for set start, turn 90 degrees left ot right
# Has a method to move one space

# In either case you must remember location
# How to remember location? What is location?
# what is the start? Set by caller

#starting is x=1, y=2, direction = North
#if turn is L, then direction = East (original direct was north.)
#if turn is R, then direction = West (original direct was north.)


class Mars
  attr_accessor :x, :y, :direction, :z

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
    @z = []
  end

  def move(x)
    case x
    when "M"
      case @direction
      when "N"
        @y += 1
      when "E"
        @x += 1
      when "S"
        @y -= 1
      else "W"
        @x -=1
      end
      return  @x , @y, @direction
    end
  end

  def turn(x)
    case x
    when "R"
      case @direction
      when "N"
        return @direction = "E"
      when "E"
        return @direction = "S"
      when "S"
        return @direction = "W"
      else "W"
        return @direction = "N"
      end
    when "L"
      case @direction
      when "N"
        return @direction = "W"
      when "W"
        return @direction = "S"
      when "S"
        return @direction = "E"
      else "E"
        return @direction = "N"
      end
    end
  end

  def read_instruction(instructions)
    @z = instructions.scan /\w/
    @z.each do |y|
      if y == "L"
        turn("L")
      elsif y == "R"
        turn("R")
      elsif y == "M"
        move("M")
      end
    end
    return  @x , @y, @direction
  end

end

# puts mars.read_instruction("LMLMLMLMM")
