require_relative '../qtools/qstr'
require_relative './dynamic_file'
require_relative './file_builder'

class PageBuilder
	def initialize(page_title)
		@page_title = page_title
		@page_pascal = QStr.force_pascal_notation(page_title)
		@page_camel = QStr.force_camel_notation(page_title)
		@page_text = QStr.force_text_notation(page_title)
	end

	def create_page
		self.create_page_tsx
		# self.add_code_to_main_tsx	
		# self.add_code_to_nav_tsx	
	end

	def create_page_tsx
		@fbPage = FileBuilder.new("newPage", "../../src/pages/Page#{@page_pascal}.tsx")
		@dfMain.add_variable('pagePascal', @page_pascal)
		@fbPage.add_variable('pageCamel', @page_camel)
		@fbPage.add_variable('pageText', @page_text)
		@fbPage.render_to_file
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