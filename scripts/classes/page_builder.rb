require_relative '../qtools/qstr'
require_relative '../classes/dynamic_file'

class PageBuilder
	def initialize(page_title)
		@page_title = page_title
		@page_pascal = QStr.force_pascal_notation(page_title)
		@page_camel = QStr.force_camel_notation(page_title)
	end

	def create_page
		self.add_code_to_main_tsx	
		self.add_code_to_nav_tsx	
	end

	def add_code_to_main_tsx
		@dfMain = DynamicFile.new('../../src/main.tsx')
		@dfMain.add_variable('pageTitle', @page_title)
		@dfMain.add_variable('pagePascal', @page_pascal)
		@dfMain.add_variable('pageCamel', @page_camel)
		@dfMain.add_line_before_marker('importStatementArea', "importPage#{@page_pascal}", 'import { Page@@pagePascal } from "./pages/Page@@pagePascal.tsx";')
		@dfMain.add_block_before_marker('routerEntryArea', "routerEntry#{@page_pascal}", 'routerEntryBlock')
		@dfMain.rerender_to_file
	end

	def add_code_to_nav_tsx
		@dfMain = DynamicFile.new('../../src/components/Nav.tsx')
		@dfMain.add_variable('pageTitle', @page_title)
		@dfMain.add_variable('pagePascal', @page_pascal)
		@dfMain.add_variable('pageCamel', @page_camel)
		@dfMain.add_block_before_marker('navEntryArea', "navEntry#{@page_pascal}", 'navEntryBlock')
		@dfMain.rerender_to_file
	end
end