class Mars
  attr_accessor :x, :y, :direction
    def initialize(x,y,d)
      @x = x
      @y = y
      @direction = direction

    def turn do |x|
        case x = "L" || "R" do
        when "L"
          @y-1
        when "R"
          @y+1
        end
    end

    def turn
      N=0
      E=1
      S=2
      W=3
    end

    def move

    end

    def read_instruction
    end
end

mars = Mars.new (1,2,N)

puts mars.input(LMLMLMLMLMLLM)
