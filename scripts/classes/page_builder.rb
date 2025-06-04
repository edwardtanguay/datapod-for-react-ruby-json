require_relative '../qtools/qstr'
require_relative '../classes/dynamic_file'

class PageBuilder
	def initialize(page_title)
		@page_title = page_title
		@page_pascal = QStr.force_pascal_notation(page_title)
		@page_camel = QStr.force_camel_notation(page_title)
	end

	def create_page
		self.modify_main_tsx	
	end

	def modify_main_tsx
		@dfMain = DynamicFile.new('../../src/main.tsx')
		# @dfMain = DynamicFile.new('../../dev/mock/simple_test.txt')
		@dfMain.add_variable('pageTitle', @page_title)
		@dfMain.add_variable('pagePascal', @page_pascal)
		@dfMain.add_variable('pageCamel', @page_camel)
		@dfMain.add_line_before_marker('importStatementArea', "importPage#{@page_pascal}", 'import { Page@@pagePascal } from "./pages/Page@@pagePascal.tsx";')
		@dfMain.add_block_before_marker('routerEntryArea', 'routerEntryProducts', 'routerEntryBlock')
		@dfMain.rerender_to_file
	end
end