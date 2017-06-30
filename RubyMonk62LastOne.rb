puts "The Beginning..."
def calculate(*nums)
  operation = {}
  numsarr = []
  nums.each do |num|
    if num.is_a?(Hash)
      operation = num
    else
      numsarr.push num
    end
  end
  # puts "operation,#{operation} array, #{numsarr}"
  if operation[:add]
    numsarr.inject(:+)
  elsif operation[:subtract]
    numsarr.inject(:-)
  else
    numsarr.inject(:+)
  end
end

def add(*nums)
  if !nums.empty?
    nums.inject(:+)
  end
end

def subtract(*nums)
  nums.inject(:-)
end

puts add()
puts add(-10,2,3)
puts subtract(-10,2,3)
puts calculate(-10,2,3,subtract:true)
puts "The End"
