require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/dynamic_file'

dfMain = DynamicFile.new('../../src/main.tsx')
dfMain.add_line_before_marker('importPage', 'import { PageProducts } from "./pages/PageProducts.tsx";')
# dynamic_file.debug

