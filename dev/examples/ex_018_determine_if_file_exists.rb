if ARGV.length < 1
	pathAndFileName = "../mock2/data.txt"
else
	pathAndFileName = ARGV[0]
end

if File.exist?(pathAndFileName)
	puts "#{pathAndFileName} exists, adding a line to it."
	File.open(pathAndFileName, "a") do |file|
		file.write("\nThis is a new line added to the file.")
	end
else
	puts "#{pathAndFileName} does not exist"
end