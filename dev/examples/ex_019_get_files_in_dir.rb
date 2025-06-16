directory = "../mock"
# directory = "C:\\" # absolute path on Windows

puts "-- with Dir.entries --------------------"
files = Dir.entries(directory).select do |f| 
	# File.file?(File.join(directory, f)) || File.directory?(File.join(directory, f)) # get directories, too
	File.file?(File.join(directory, f))
end
puts "Found #{files.length} files in directory '#{directory}':"
files.each do |file|
	puts "Found file: #{file}"
end

puts "-- with Dir.foreach --------------------"
allFiles = []
Dir.foreach(directory) do |f|
	if File.file?(File.join(directory, f))
		allFiles << f
	end
end
puts "Found #{allFiles.length} files in directory '#{directory}':"
allFiles.each do |file|
	puts "Found file: #{file} (#{File.size(File.join(directory, file))} bytes)"
end
