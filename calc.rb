def Calc(operation,num1,num2)
  case operation
    when "sum"
      puts num1+num2
    when "sub"
      puts num1-num2
    when "mult"
      puts num1*num2
    when "div"
      puts num1/num2
    else
      puts "Invalid operation"
  end
end
