output = `awk '{ print $1 }' data_colors.txt`
array = output.split("\n")
puts array.inspect