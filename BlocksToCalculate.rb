def calculate(a,b)
  yield(a,b)
end

def multi(a,b)
  a*b
end

def sum(a,b)
  a+b
end

def sub(a,b)
  a-b
end

puts calculate(3,4) {|a,b| multi(a,b)}
puts calculate(3,4) {|a,b| sum(a,b)}
puts calculate(3,4) {|a,b| sub(a,b)}
