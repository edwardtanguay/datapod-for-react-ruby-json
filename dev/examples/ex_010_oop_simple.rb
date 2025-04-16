class SmartFile 
	# attr :file_path # this is deprecated in Ruby 3.0
	# attr_reader :file_path
	# attr_writer :file_path
	attr_accessor :file_path

	def initialize(file_path)
		@file_path = file_path
	end

	def get_info
		return "testing"
	end

end

smartFile = SmartFile.new("example.txt")
puts "\n=== SMART FILE OBJECT ==="
puts smartFile.file_path
smartFile.file_path = "new_example.txt"
puts smartFile.file_path
puts "\n=== SMART FILE INFO ==="
puts smartFile.get_info
puts smartFile.object_id

smartFile2 = SmartFile.new("example.txt")
puts smartFile2.object_id

