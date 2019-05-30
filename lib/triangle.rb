class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c 
  end
  
  def kind 
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
  end

end
