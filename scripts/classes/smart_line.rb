class SmartLine 
	attr_accessor :line, :line_number, :num_of_tabs, :marker

	def initialize(line, line_number)
		@line = line
		@line_number = line_number
		@num_of_tabs = line.count("\t")
		@marker = "testing"
	end
end
