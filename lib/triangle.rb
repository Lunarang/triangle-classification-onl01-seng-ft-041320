
class Triangle
  attr_reader :a, :b, :c
  
  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a <= 0 || b <= 0 || c <= 0 || 
       a + b <= c || a + c <= b || b + c <= a
      begin
        raise TriangleError
      end
    
    elsif a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
     def message
      "Hey! That's not a triangle!"
    end
  end

end