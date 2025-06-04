class SmartLine 
	attr_accessor :line, :core_line, :line_number, :num_of_tabs, :marker

	# line_number = 0 means the line is added line, not an existing line in the file
	def initialize(line, line_number = 0)
		@line = line
		@core_line = line.strip
		@line_number = line_number
		@num_of_tabs = line.count("\t")
		@marker = "testing"
	end

	def debug	
		puts @core_line
		puts "--------------------------"
		puts "line_number = #{@line_number}"
		puts "num_of_tabs = #{@num_of_tabs}"
		puts "marker = #{@marker}"
		puts "================================================"
	end
end
