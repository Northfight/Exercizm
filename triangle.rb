class Triangle
  attr_reader :min_side, :mid_side, :max_side
  
  def initialize(triangle)
    @min_side, @mid_side, @max_side = triangle.sort
  end	
 
  def equilateral?
    valid? && min_side == max_side 
  end	

  def isosceles?
    valid? && ((min_side == mid_side) || (mid_side == max_side)) 
  end
 
  def scalene?
    valid? && !isosceles?
  end
  
 private
 
  def valid? 
    all_sides_positive? && (max_side < min_side + mid_side) 
  end

  def all_sides_positive?
    min_side > 0
  end	
end


