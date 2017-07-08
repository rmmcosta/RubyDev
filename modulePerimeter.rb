module Perimeter
  def getPerimeter
    self.sides.inject(:+)
  end
end

class Rectangle

  attr_accessor :a,:b,:c,:d

  include Perimeter

  def initialize(a=5,b=3,c=5,d=3)
    @a = a
    @b = b
    @c = c
    @d = d
    @@x = 3 # class variable
  end

  def sides
    [@a,@b,@c,@d]
  end

end

class Square
  include Perimeter

end

myrec1 = Rectangle.new(2,1,2,1)

myrec2 = Rectangle.new

myrec3 = Rectangle.new(2,1,2,1)

puts myrec1.instance_variables

puts myrec1.a

puts myrec1.getPerimeter

puts myrec2.instance_variables

puts myrec2.a

puts myrec2.getPerimeter
