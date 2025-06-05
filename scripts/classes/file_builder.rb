require_relative '../qtools/qstr'
require_relative '../qtools/qfil'
require_relative '../classes/dynamic_file'

class FileBuilder
	def initialize(fileTemplate, pathAndFileName)
		@fileTemplate = fileTemplate
		@pathAndFileName = pathAndFileName
		@variables = {}
		self.init_state
	end

	def init_state
		@lines = QFil.get_lines_from_file(@fileTemplate)
		# self.build_smart_lines
		self.debug
	end
	
	def add_variable(name, value)
		@variables[name] = value
	end

	def render_to_file
		
	end

	def debug(level = 0)
		puts "FileBuilder Debug:"
		puts "  fileTemplate: #{@fileTemplate}"
		puts "  pathAndFileName: #{@pathAndFileName}"
		puts "  number of lines: #{@lines.length}"
		if level == 0
			@lines.each do |line|
				puts line
			end
		end
		puts "========================================="
	end

end