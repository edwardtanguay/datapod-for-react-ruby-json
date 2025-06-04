require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/dynamic_file'

# dfMain = DynamicFile.new('../../src/main.tsx')
dfMain = DynamicFile.new('../../dev/mock/marker_test.txt')
dfMain.add_line_before_marker('importPage', 'import { PageProducts } from "./pages/PageProducts.tsx";')
dfMain.add_line_before_marker('defineString', 'str2 = "another indented string"')
dfMain.rerender_to_file
dfMain.debug(1)

