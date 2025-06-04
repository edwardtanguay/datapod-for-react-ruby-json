require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/dynamic_file'

if ARGV.length < 1
  QCli.message("Usage: npm run cp \"More Info\"", "info")
  exit
end

page_title = ARGV[0];
QDev.debug("Creating page: #{page_title}")

# dfMain = DynamicFile.new('../../src/main.tsx')
dfMain = DynamicFile.new('../../dev/mock/marker_test.txt')
dfMain.add_line_before_marker('importStatementArea', 'importPageProducts', 'import { PageProducts } from "./pages/PageProducts.tsx";')
dfMain.add_block_before_marker('routerEntryArea', 'routerEntryProducts', 'routerEntryBlock')
dfMain.rerender_to_file
# dfMain.debug(2)

