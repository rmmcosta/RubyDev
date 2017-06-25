l1 = lambda {puts "hi"}
l1.call
l2 = lambda {|name| puts "Hi #{name}"}
l2.call(gets.chomp)
