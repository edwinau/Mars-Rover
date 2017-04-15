class Mars
  attr_accessor :x, :y, :direction, :z

    def initialize(x,y,d)
      @x = x
      @y = y
      @direction = direction
      @z = []
    end


    def read_instruction(instructions)
      @z = instructions.scan /\w/
      return @z
    end

    def move
    end

    def turn
    end

end

mars = Mars.new(1,2,"N")
puts mars.read_instruction("LMLMLMLMM")

puts mars.z.to_s
