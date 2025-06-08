def get_names
	awk = `awk ' { print $2, $1 } ' data_names.txt`
	awk.split("\n")
end

names = get_names
puts names.inspect