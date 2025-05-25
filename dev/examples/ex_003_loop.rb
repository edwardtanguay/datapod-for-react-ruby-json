# while
puts "---"
stock = 5
while stock > 0
  puts "Stock is #{stock}"
  stock -= 1
end

# for
puts "---"
for i in 1..5 # 1 to 5 inclusive
  puts "Iteration inclusive: #{i}"
end

# for
puts "---"
for i in 1...5 # 1 to 4 excluding 5
  puts "Iteration exclusive: #{i}"
end

# each
puts "---"
(1..5).each do |i|
  puts "Each iteration #{i}"
end

# times
puts "---"
5.times do |i|
  puts "Times iteration #{i + 1}"
end

# until
puts "---"
stock = 5
until stock <= 0
  puts "Stock is #{stock}"
  stock -= 1
end

# loop
puts "---"
stock = 5
loop do
  puts "Stock is #{stock}"
  stock -= 1
  break if stock <= 0
end

# another times loop
puts "---"
5.times do |i|
  puts "again-001: #{i}"
end

# write it another way
puts "---"
5.times { |i| puts "again-002: #{i}" }



