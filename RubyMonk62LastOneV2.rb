puts "The Beginning..."
def calculate(*nums)
  operation = nums[-1].is_a?(Hash) ? nums.pop : {}
  if operation[:add]
    add(*nums)
  elsif operation[:subtract]
    subtract(*nums)
  else
    add(*nums)
  end
end

def add(*nums)
  nums.inject(:+)
end

def subtract(*nums)
  nums.inject(:-)
end

puts add()
puts add(-10,2,3)
puts subtract(-10,2,3)
puts calculate(-10,2,3,subtract:true)
puts calculate(-10,2,3)
puts "The End"
