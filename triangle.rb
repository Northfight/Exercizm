class Triangle
  attr_reader :a, :b, :c
  
  def initialize(triangle)
    @a,@b,@c = triangle
  end	
 
  def equilateral?
    valid? && (a == b && b == c)
  end	

  def isosceles?
    valid? && ((a == b) || (a == c) || (b == c )) 
 
  def scalene?
    valid? && (a != b && b != c) 
  end
  
 private
 
  def valid? 
    all_sides_present? && (b < a + c) && (c < a + b) && (a < b + c)
  end

  def all_sides_present?
  	a > 0 && b > 0 && c > 0
  end	
end


