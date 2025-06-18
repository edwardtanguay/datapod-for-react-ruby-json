require_relative '../qtools/qfil'
require_relative './file_builder'
require_relative './generic_parsed_line'
require_relative './generic_parsed_block'

class GenericParsedFile 
	def initialize(file_id_code)
		@content = ""
		@generic_parsed_lines = []
		dpod_test_file_directory = "dev/test_smart_files"
		dpod_file_name = "#{file_id_code}.dpod.txt"
		html_file_name = "#{file_id_code}.dpod.html"
		@dpod_path_and_file_name = "#{dpod_test_file_directory}/#{dpod_file_name}"
		@html_path_and_file_name = "#{dpod_test_file_directory}/#{html_file_name}"
		self.create_generic_parsed_lines
		self.create_generic_parsed_blocks
	end

	def render_as_html
		self.create_content_as_html
		@fbPage = FileBuilder.new("newDpodHtmlFile", @html_path_and_file_name)
		@fbPage.add_variable('content', @content)
		@fbPage.render_to_file
	end

	private

	def create_generic_parsed_blocks
		@generic_parsed_blocks = []
		gplBlock = []
		collectingBlock = false
		@generic_parsed_lines.each do |gpl|
			if(gpl.is_empty)
				if(collectingBlock)
					@generic_parsed_blocks << GenericParsedBlock.new(gplBlock)
				end
				gplBlock = []
				collectingBlock = false
			end
			if(!gpl.is_empty)
				collectingBlock = true
				gplBlock << gpl
			end
		end
	end

	def create_content_as_html 
		@generic_parsed_blocks.each do |pdb|
			@content += pdb.render_as_html
		end
	end

	def create_generic_parsed_lines
		lines = QFil.get_lines_from_file(@dpod_path_and_file_name)
		# add dummy lines so all lines are processed
		lines << ""
		lines << "DUMMY"
		processing_block = false
		block_lines = []
		lines.each do |raw_line|
			line = raw_line.strip	
			if(line == "[[")
				processing_block = true
				next
			end
			if(line == "]]")
				processing_block = false
				gpl = GenericParsedLine.new(block_lines)
				block_lines = []
				@generic_parsed_lines << gpl
				next
			end
			if(processing_block) 
				block_lines << line
			else
				gpl = GenericParsedLine.new(line)
				@generic_parsed_lines << gpl
			end
		end
	end

	
end