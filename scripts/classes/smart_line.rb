require_relative '../qtools/qstr'
require_relative '../qtools/qdev'

class SmartLine 
	attr_accessor :line, :core_line, :line_number, :num_of_tabs, :marker

	# line_number = 0 means the line is added line, not an existing line in the file
	# num_of_tabs = 0 means to get the indention from the line, otherwise it is the number of tabs to indent
	def initialize(line, line_number = 0, num_of_tabs = 0)
		@line = line
		@core_line = line.strip
		@line_number = line_number
		if num_of_tabs == 0
			@num_of_tabs = QStr.get_number_of_preceding_tabs(line)
		else 
			@num_of_tabs = num_of_tabs
		end
		@marker = self.extract_markeridcode_from_line(line)
	end

	def debug	
		puts @core_line
		puts "--------------------------"
		puts "line_number = #{@line_number}"
		puts "num_of_tabs = #{@num_of_tabs}"
		if @marker.nil?
			puts "(no marker)"
		else
			puts "marker = #{@marker}"
		end
		puts "================================================"
	end

	private

	def extract_markeridcode_from_line(line)
		m = line.match(/##MARKER:(.*?)##/)
		return m[1].strip if m
		nil
	end

	def extract_marker_from_line(line)
		if line.include?("//##MARKER:")
			# Extract the marker ID code from the line
			marker_start = line.index("//##MARKER:") + "//##MARKER:".length
			marker_end = line.index("##", marker_start)
			@marker = line[marker_start...marker_end].strip if marker_end
		else
			@marker = nil
		end
	end
end