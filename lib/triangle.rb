class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    #code 
  end
  
  class TriangleError < StandardError
    if @a < 0 || @b < 0 || @c < 0
      def message
        
  end

end
