class Vehicle
  @@count = 0
  attr_accessor :color
  def initialize(color)
    @@count += 1
    @color = color
  end

  def buzz
    puts "Buzz, buzz, buzz"
  end

  def self.count
    @@count
  end
end

carro1 = Vehicle.new('Blue')

carro1.buzz
puts carro1.color

puts Vehicle.count

carro2 = Vehicle.new('Red')

carro2.buzz
puts carro2.color

puts Vehicle.count
