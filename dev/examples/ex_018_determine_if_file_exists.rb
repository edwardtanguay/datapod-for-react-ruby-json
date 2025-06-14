if ARGV.length < 1
	pathAndFileName = "../mock2/data.txt"
else
	pathAndFileName = ARGV[0]
end

if File.exist?(pathAndFileName)
	puts "#{pathAndFileName} exists"
else
	puts "#{pathAndFileName} does not exist"
end