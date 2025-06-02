require_relative '../qtools/qfil'

class DynamicFile
	def initialize(pathAndFileName)
		@pathAndFileName = pathAndFileName
		self.init_state
	end

	def init_state
		@lines = QFil.get_lines_from_file(@pathAndFileName)
	end

	def debug
		puts "@pathAndFileName = \"#{@pathAndFileName}\""
		puts "@lines ="
		puts "---"
		@lines.each do |line|
			puts line
		end
		puts "---"
	end

end