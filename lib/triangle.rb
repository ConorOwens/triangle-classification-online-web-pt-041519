class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    #code 
  end
  
  class TriangleError < StandardError
      def negatives
        puts "You can't have a negative value for side length!"
      end
    end
  end

end
