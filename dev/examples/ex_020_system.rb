
ret = system("ls") # true
# ret = system("ls ksdj") # false
# ret = system("laskdfj") # nil
puts "Command executed with: #{ret}"
puts "Result: #{ret.inspect}" # will also show nil

# this uses the current process so nothing executes after it
puts "----"
success = exec("ls")
puts "won't be executed"
