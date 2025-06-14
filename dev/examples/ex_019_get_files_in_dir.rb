directory = "../mock"
# directory = "C:\\" # absolute path on Windows
files = Dir.entries(directory).select do |f| 
	File.file?(File.join(directory, f)) 
end
puts "Found #{files.length} files in directory '#{directory}':"
files.each do |file|
	puts "Found file: #{file}"
end