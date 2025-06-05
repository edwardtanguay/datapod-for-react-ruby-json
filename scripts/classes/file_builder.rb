require_relative '../qtools/qstr'
require_relative '../classes/dynamic_file'

class FileBuilder
	def initialize(page_title)
		@page_title = page_title
		@page_pascal = QStr.force_pascal_notation(page_title)
		@page_camel = QStr.force_camel_notation(page_title)
		@page_text = QStr.force_text_notation(page_title)
	end
end