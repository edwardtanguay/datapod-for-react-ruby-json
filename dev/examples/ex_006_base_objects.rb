puts "---INTEGER---"
p 15.odd?

puts "---FLOAT---"
p 5.3.floor
p 5.3.ceil
p 5.3.round
p 5.3.round(2)
p 5.3234.round(3)

puts "---RANDOM---"
p rand(3) # Random number between 0 and 2
p rand(1..3) # Random number between 1 and 3

puts "---MATH---"
p Math::PI

puts "---BOOLEAN---"
p false.to_s
p true.to_s

puts "---STRING---"
p "hello".capitalize
p "hello".upcase
p "hello".downcase
p "hello".reverse	
p "hello".length
message = "Hello, world!"
p message.upcase
p message
p message.upcase! # This modifies the original string
p message

puts "---SYMBOL---"
p :variable.to_s

puts "---ARRAY---"
nums = [1, 2, 3, 4, 5]
p nums.length
p nums.first
p nums.last
p nums.include?(3)
p nums.reverse
p nums.sort
p nums.map { |n| n * 2 } # Double each element

puts "---RANGE---"
p (1..5).to_a # Convert range to array
p (1...5).to_a # Exclude the end value

puts "---HASH---"
person = { name: "Uwe", age: 30, city: "Berlin" }
p person[:name] # Access value by key
p person
p person.keys # Get all keys
p person.values # Get all values
person2 = {
	:name => "Ulf", # Symbol key
	'name' => "a second value", # String key
	:age => 40,
	:city => "Hamburg"
}
p person2[:name] # Access value by key
p person2['name'] # Access value by string key
p person2.keys # Get all keys
p person2.values # Get all values
p person2

puts "---TIME---"
p Time.now # Current time
p Time.now.year # Current year
p Time.now.month # Current month
p Time.now.day # Current day
p Time.now.strftime("%Y-%m-%d %H:%M:%S") # Format time
