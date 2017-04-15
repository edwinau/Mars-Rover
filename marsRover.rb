class Mars
  attr_accessor :x, :y, :direction

    def initialize(x,y,d)
      @x = x
      @y = y
      @direction = direction
    end


    def read_instruction(instructions)
      instructions.scan /\w/
      
    end

    def move
    end

    def turn
    end

end

mars = Mars.new(1,2,"N")
mars.read_instruction("LMLMLMLMM")
