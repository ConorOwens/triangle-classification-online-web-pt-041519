class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
    
    squared = []
    squared << @a*@a 
    squared << @b*@b 
    squared << @c*@c 
    squared = squared.sort
    
    if @a < 0 || @b < 0 || @c < 0 
      begin 
        raise TriangleError
      end
    end
    
    if @a == 0 || @b == 0 || @c == 0 
      begin 
        raise TriangleError
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
    #code?
  end

end
