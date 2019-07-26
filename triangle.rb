class Triangle
    
  attr_reader :a, :b, :c
  
  def initialize(triangle)
    @a,@b,@c = triangle
  end	
 
  def equilateral?
  	(a == b && b == c) && is_triangle?
  end	

  def isosceles?
    ((a == b) || (a == c) || (b == c )) && is_triangle?
  end
 
  def scalene?
  	 ((a && b != c) && (a != b)) && is_triangle?
  end
  
 private
 
  def is_triangle? 
   all_sides_present? && (b < a + c) && (c < a + b) && (a < b + c)
  end

  def all_sides_present?
  	a > 0 && b > 0 && c > 0
  	
  end	
end
p Triangle.new([2, 2, 2]).equilateral?

