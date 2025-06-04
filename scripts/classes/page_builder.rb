class PageBuilder
	def initialize(page_title)
		@page_title = page_title
	end

	def create_page
		QDev.debug(">>> Creating page: #{@page_title}")

		# dfMain = DynamicFile.new('../../src/main.tsx')
		dfMain = DynamicFile.new('../../dev/mock/marker_test.txt')
		dfMain.add_line_before_marker('importStatementArea', 'importPageProducts', 'import { PageProducts } from "./pages/PageProducts.tsx";')
		dfMain.add_block_before_marker('routerEntryArea', 'routerEntryProducts', 'routerEntryBlock')
		dfMain.rerender_to_file
		# dfMain.debug(2)
	end
end