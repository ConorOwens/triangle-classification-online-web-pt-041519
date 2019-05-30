class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    #code 
  end
  
  class TriangleError < StandardError
    if Triangle.a < 0 || @b < 0 || @c < 0
      def message
        #code
      end
    end
  end

end
