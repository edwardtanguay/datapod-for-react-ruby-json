require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/page_builder'

if ARGV.length < 1
  QCli.message("Usage: npm run cp \"More Info\"", "info")
  exit
else
	page_title = ARGV[0];
	pb = PageBuilder.new(page_title)
	pb.create_page	
end


