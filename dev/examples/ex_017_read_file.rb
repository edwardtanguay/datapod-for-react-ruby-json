file_name = "../mock/data.txt"

# read line by line
File.foreach(file_name) do |line|
	puts ">> #{line}"
end

# read content
content = File.read(file_name)
puts content
