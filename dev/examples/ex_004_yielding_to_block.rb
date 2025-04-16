# this is used often in Ruby or Rails code
# it is a way to pass a block of code to a method
# and have that block executed at a certain point in the method

puts "---001"
def print_conversation
  puts "Hello"
  puts yield
  puts "Nice to see you here."
end

print_conversation do
	"Hans"
end

puts "---002"
def print_conversation
  puts "Hello"
  puts yield("Hans")
  puts "Nice to see you here."
end

print_conversation do |name|
	"a person named #{name}"
end

