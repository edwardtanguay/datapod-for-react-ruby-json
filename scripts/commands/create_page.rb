require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/dynamic_file'
require_relative './page_builder'

if ARGV.length < 1
  QCli.message("Usage: npm run cp \"More Info\"", "info")
  exit
else
	page_title = ARGV[0];
	page = PageBuilder.new(page_title)
	page.create_page
end


