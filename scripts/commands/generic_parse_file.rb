require_relative '../classes/generic_parsed_file'

if ARGV.length < 1
  QCli.message("Usage: npm run pf test", "info")
  exit
else
	id_code = ARGV[0]
	dpod_file = GenericParsedFile.new(id_code)
	dpod_file.render_as_html
end