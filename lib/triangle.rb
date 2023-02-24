class Triangle
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  class TriangleError < StandardError
  end
  
  def kind
    if !valid_triangle?
      raise TriangleError.new("Invalid triangle!")
    elsif @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    @a > 0 && @b > 0 && @c > 0 && (@a + @b > @c) && (@a + @c > @b) && (@b + @c > @a)
  end
end
