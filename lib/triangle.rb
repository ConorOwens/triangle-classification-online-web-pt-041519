class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
    
    if @a < 0 || @b < 0 || @c < 0 
      begin 
        raise TriangleError.negatives
      end
    end
    
    if @a == 0 || @b == 0 || @c == 0 
      begin 
        raise TriangleError.no_length
      end
    end
    
    if @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b == @c || @a == @c
      return :isosceles
    else
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    
    def negatives
      puts "You can't have a negative value for side length!"
    end
    
    def no_length
      puts "All triangle sides MUST have a length!"
    end
    
  end

end
