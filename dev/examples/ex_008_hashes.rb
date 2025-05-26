
puts "---CREATE A HASH---"
person = {
  name: "Uwe",
  age: 30,
  city: "Berlin"
}
p person

puts "---Accessing Values---"
p person[:name]  # Access value by symbol key
p person[:age]   # Access value by symbol key
p person[:city]  # Access value by symbol keys

puts "---Adding a New Key-Value Pair---"
person[:email] = "uwe@example.com" # Add a new key-value pair
p person

puts "---Updating a Value---"
person[:age] = 31  # Update existing value
p person

puts "---Deleting a Key-Value Pair---"
person.delete(:city)  # Delete a key-value pair
p person

puts "---Checking Existence of a Key---"
p person.key?(:name)  # Check if key exists
p person.key?(:city)  # Check if key exists

puts "---Iterating Over a Hash---"
person.each do |key, value|
  puts "#{key}: #{value}"
end

puts "---Getting All Keys---"
p person.keys  # Get all keys

puts "---Getting All Values---"
p person.values  # Get all values

puts "---Using Symbols as Keys---"
symbol_hash = {
  name: "Ulf",
  age: 40,
  city: "Hamburg"
}
p symbol_hash[:name]  # Access value by symbol key
p symbol_hash.keys    # Get all keys
p symbol_hash.values  # Get all Values

puts "---Using Strings as Keys---"
string_hash = {	
	  'name' => "Alice",
	  'age' => 25,
	  'city' => "New York"
}
p string_hash['name']  # Access value by string key
p string_hash.keys    # Get all keys
p string_hash.values  # Get all values

puts "---interating with each_key and each_value---"
string_hash.each_key do |key|
  puts "Key: #{key}"
end
string_hash.each_value do |value|
  puts "Value: #{value}"
end

puts "---interating with each_pair---"
string_hash.each_pair do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

puts "---Converting Hash to Array---"
hash_array = person.to_a  # Convert hash to array of key-value pairs	
p hash_array

puts "---has_key? and has_value?---"
p person.has_key?(:name)  # Check if key exists
p person.has_value?("Uwe")  # Check if value exists

puts "---default values---"
default_hash = Hash.new("Not Found")  # Create a hash with a default value
default_hash[:name] = "Bob"
p default_hash[:name]  # Access existing key
p default_hash[:age]   # Access non-existing key, returns default Value

puts "---inverting a hash---"
inverted_hash = person.invert  # Invert keys and values
p inverted_hash

puts "---Merging Hashes---"
hash1 = { a: 1, b: 2 }
hash2 = { b: 3, c: 4 }
merged_hash = hash1.merge(hash2)  # Merge two hashes
p merged_hash

puts "---selecting key-value pairs---"
selected_hash = person.select { |key, value| key == :name || value == 31 }  # Select specific key-value pairs
p selected_hash

puts "---Transforming Hash Values---"
transformed_hash = person.transform_values { |value| value.to_s.upcase }  # Transform values to uppercase
p transformed_hash
