require_relative 'Calc'

puts "Input the Operation (Sum, Sub, Mult, Div) followed by two numbers"
puts "Operation:"
STDOUT.flush
operation = gets.chomp
puts "Num1:"
STDOUT.flush
num1 = gets.chomp.to_f
puts "Num2:"
STDOUT.flush
num2 = gets.chomp.to_f
Calc(operation,num1,num2)
