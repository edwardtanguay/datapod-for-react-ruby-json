output = `awk ' { print $2, $1 } ' data_names.txt`
array = output.split("\n")
puts array.inspect