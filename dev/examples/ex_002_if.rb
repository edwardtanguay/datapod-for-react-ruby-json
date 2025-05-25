# then is optional in Ruby for single-line if statements
age = 50
logged_in = true

if age < 60
  puts "You are young."
else
  puts "You are old."
end

if age > 0 then
  puts "valid age"
else
  puts "invalid age"
end

if age > 0 && logged_in
  puts "valid age and logged in"
else
  puts "invalid age or not logged in"
end

if age > 0 || logged_in
  puts "valid age or logged in"
end

unless age > 0
  puts "invalid age"
else
  puts "valid age"
end