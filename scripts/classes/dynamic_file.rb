require_relative '../qtools/qfil'
require_relative '../qtools/qcli'
require_relative 'smart_line'

# DynamicFile reads a file into line
# then into SmartLines
# these SmartLines identifiy markers
# Smartlines can be added before markers, etc.
# then SmartLines can be written back to the file

class DynamicFile
	attr_reader :lines, :smart_lines

	def initialize(pathAndFileName)
		@pathAndFileName = pathAndFileName
		self.init_state
		self.build_smart_lines
	end

	# level 0 = line only
	# level 1 = all info
	def debug(level = 0)
		puts "number of lines = #{@lines.length}"
		puts "number of smart lines = #{@smart_lines.length}"
		puts "@pathAndFileName = \"#{@pathAndFileName}\""
		puts "@lines ="
		puts "---"
		@smart_lines.each do |smart_line|
			case level
			when 0
				smart_line.core_line
			when 1
				smart_line.debug
			end
		end
		puts "---"
		QCli.message("DynamicFile debug complete", "success")
	end

	def add_line_before_marker(markerIdCode, line)
		# Find the index of the marker line
		marker_index = @smart_lines.index { |smart_line| smart_line.marker == markerIdCode }
		if marker_index
			# Insert the new line before the marker line
			@smart_lines.insert(marker_index, SmartLine.new(line, 0, @smart_lines[marker_index].num_of_tabs))
		else
			QCli.message("markerIdCode not found: #{markerIdCode}", "error")
		end
	end

	def rerender_to_file
		# Write the smart lines back to the file
		QFil.write_lines_to_file(@pathAndFileName, @smart_lines.map(&:rerender_line_for_file))
	end

	private

	def init_state
		@lines = QFil.get_lines_from_file(@pathAndFileName)
	end

	def build_smart_lines
		@smart_lines = []
		@lines.each_with_index do |line, index|
			smart_line = SmartLine.new(line, index + 1)
			@smart_lines << smart_line
		end
	end
end