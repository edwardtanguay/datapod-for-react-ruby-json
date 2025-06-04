require_relative '../qtools/qfil'
require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative './smart_line'
require_relative './smart_block'

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
	# level 2 = tab + line
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
			when 2
				puts smart_line.get_visble_tab_line
			end
		end
		puts "---"
		QCli.message("DynamicFile debug complete", "success")
	end

	def build_line_marker(markerLineIdCode)
		" //##MARKER:#{markerLineIdCode}##"
	end

	def add_line_before_marker(markerAreaIdCode, markerLineIdCode, line)
		marker_index = @smart_lines.index { |smart_line| smart_line.marker == markerAreaIdCode }
		if marker_index
			pre_tabs = @smart_lines[marker_index].num_of_tabs
			lineWithMarker = line + self.build_line_marker(markerLineIdCode)
			@smart_lines.insert(marker_index, SmartLine.new(lineWithMarker, 0, pre_tabs))
		else
			QCli.message("markerAreaIdCode not found: #{markerAreaIdCode}", "error")
		end
	end

	def add_block_before_marker(markerAreaIdCode, markerBlockIdCode, blockTemplateIdCode)
		marker_index = @smart_lines.index { |smart_line| smart_line.marker == markerAreaIdCode }
		if marker_index
			pre_tabs = @smart_lines[marker_index].num_of_tabs
			smart_block = SmartBlock.new(blockTemplateIdCode, markerBlockIdCode, pre_tabs)
			smart_block.debug
			@smart_lines = smart_block.add_to_smart_lines(marker_index,@smart_lines, pre_tabs)
			QDev.debug(@smart_lines.length)
		else
			QCli.message("markerAreaIdCode not found: #{markerAreaIdCode}", "error")
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