# frozen_string_literal: true
name = "Hans"
puts "Hello, #{name}!"
# name.freeze # freeze the string so it can't be changed
# name << " Müller" rescue puts "Name is frozen and cannot be modified."
name.upcase! rescue puts "Cannot change name" # this will raise an error if the string is frozen
puts "Hello, #{name}!"

