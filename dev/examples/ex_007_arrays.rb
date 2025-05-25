# arrays
# Create an array
puts "---ARRAYS---"
puts "---Creating an Array---"
arr = ["apple", "banana", "cherry"]
# Access elements
p arr[0] # First element
p arr[1] # Second element
p arr[2] # Third element
p arr[-1] # Last element

puts "---Adding Elements---"
arr << "pineapple" # Append an element
p arr

puts "---Inserting Elements---"
arr.insert(1, "orange") # Insert at index 1
p arr

puts "---Removing Elements---"
arr.delete("banana") # Remove by value
p arr

puts "---Removing by Index---"
arr.delete_at(0) # Remove first element
p arr

puts "---delete_if---"
arr.delete_if { |fruit| fruit.start_with?("p") } # Remove elements starting with "p"
p arr

puts "---Checking Existence---"
p arr.include?("cherry") # Check if "cherry" is in the array
p arr.include?("banana") # Check if "banana" is in the array

puts "---Iterating Over an Array---"
arr.each do |fruit|
  puts fruit
end

puts "---Array Length---"
p arr.length # Get the number of elements in the array

puts "---Sorting an Array---"
sorted_arr = arr.sort # Sort the array
p sorted_arr

puts "---Reversing an Array---"
reversed_arr = arr.reverse # Reverse the array
p reversed_arr

puts "---Mapping an Array---"
mapped_arr = arr.map { |fruit| fruit.upcase } # Convert each element to uppercase
p mapped_arr

puts "---each_with_index---"
arr.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end

puts "---any? and all?---"
p arr.any? { |fruit| fruit.start_with?("a") } # Check if any element starts with "a"
p arr.all? { |fruit| fruit.start_with?("a") } # Check if all elements start with "a"

puts "---Finding Elements---"
p arr.find { |fruit| fruit.start_with?("c") } # Find first element starting with "c"
p arr.select { |fruit| fruit.start_with?("a") } # Select all elements starting with "a"

puts "---Flattening an Array---"
nested_arr = [[1, 2], [3, 4], [5]]
flattened_arr = nested_arr.flatten # Flatten the nested array
p flattened_arr

puts "---Joining an Array---"
joined_str = arr.join(", ") # Join elements into a string
p joined_str

puts "---Splitting a String into an Array---"
split_arr = joined_str.split(", ") # Split string back into an array
p split_arr

puts "---empty?---"
p arr.empty? # Check if the array is empty

puts "---Clearing an Array---"
arr.clear # Remove all elements from the array
p arr # Should be empty now

puts "---Using a Range to Create an Array---"
range_arr = (1..5).to_a # Create an array from a range
p range_arr

puts "---Using a Range with Exclusion---"
exclusive_range_arr = (1...5).to_a # Create an array excluding the end value
p exclusive_range_arr

puts "---compact---"
arr_with_nil = [1, nil, 2, nil, 3]
p arr_with_nil.compact # Remove nil values

puts "---uniq---"
arr_with_duplicates = [1, 2, 2, 3, 3, 4]
p arr_with_duplicates.uniq # Remove duplicate value

puts "---push and pop---"
arr_with_duplicates.push(5) # Add an element to the end
p arr_with_duplicates
arr_with_duplicates.pop # Remove the last element
p arr_with_duplicates

puts "---shift and unshift---"
arr_with_duplicates.unshift(0) # Add an element to the beginning
p arr_with_duplicates
arr_with_duplicates.shift # Remove the first element
p arr_with_duplicates

puts "---shuffle---"
shuffled_arr = arr_with_duplicates.shuffle # Randomly shuffle the array
p shuffled_arr
