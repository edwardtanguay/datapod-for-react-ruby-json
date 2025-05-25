# while
stock = 5
while stock > 0
  puts "Stock is #{stock}"
  stock -= 1
end

# for
for i in 1..5
  puts "Iteration #{i}"
end

# each
(1..5).each do |i|
  puts "Each iteration #{i}"
end

# times
5.times do |i|
  puts "Times iteration #{i + 1}"
end

# until
stock = 5
until stock <= 0
  puts "Stock is #{stock}"
  stock -= 1
end

# loop
stock = 5
loop do
  puts "Stock is #{stock}"
  stock -= 1
  break if stock <= 0
end		

