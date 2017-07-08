module Perimeter
  def getPerimeter(a,b,c,d)
    a+b+c+d
  end
end

class Rectangle
  @@a = 5
  @@b = 3
  @@c = 5
  @@d = 3

  attr_accessor :a,:b,:c,:d

  include Perimeter

  def initialize(a=5,b=3,c=5,d=3)
    @@a = a
    @@b = b
    @@c = c
    @@d = d
  end

end

class Square
  include Perimeter

end

myrec1 = Rectangle.new(2,1,2,1)

myrec2 = Rectangle.new

puts myrec1.instance_variables

puts myrec1.a

puts myrec2.instance_variables

puts myrec2.a

#puts myrec1.getPerimeter(myrec1.instance_variables)
