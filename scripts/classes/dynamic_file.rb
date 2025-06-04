require_relative '../qtools/qfil'
require_relative '../qtools/qcli'
require_relative 'smart_line'

class DynamicFile
	attr_reader :lines, :smart_lines

	def initialize(pathAndFileName)
		@pathAndFileName = pathAndFileName
		self.init_state
		self.build_smart_lines
	end

	def debug
		puts "number of lines = #{@lines.length}"
		puts "number of smart lines = #{@smart_lines.length}"
		puts "@pathAndFileName = \"#{@pathAndFileName}\""
		puts "@lines ="
		puts "---"
		@smart_lines.each do |smart_line|
			smart_line.debug
		end
		puts "---"
		QCli.message("DynamicFile debug complete", "success")
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