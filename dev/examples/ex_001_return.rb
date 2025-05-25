# in Ruby, a method can return a value with or without the `return` keyword

def get_average(n1, n2) 
	  return (n1 + n2) / 2
end

def get_average_noreturn(n1, n2) 
	  (n1 + n2) / 2
end

puts get_average(10, 20) # prints 15
puts get_average_noreturn(10, 20) # prints 15

puts get_average(2, 3) # prints 2 !!!
puts get_average(2.0, 3.0) # prints 2.5