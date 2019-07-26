class Triangle
  attr_reader :min_side, :mid_side, :max_side :triangle
  end	
  
  def initialize(triangle)
    @min_side,@mid_side,@max_side = triangle.sort
    @triangle = triangle
  end	
 
  def equilateral?
    valid? && min_side == max_side 
  end	

  def isosceles?
    valid? && ((min_side == mid_side) || (mid_side == max_side) || (max_side == min_side )) 
 
  def scalene?
    valid? && (min_side != mid_side && mid_side != max_side) 
  end
  
 private
 
  def valid? 
    all_sides_present? && (max_side < min_side + mid_side) 
  end

  def all_sides_positive?
    min_side > 0
  end	
 	
end


