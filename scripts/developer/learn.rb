require_relative '../qtools/qdev'
require_relative '../qtools/qcli'

class Learn
	def print_title(title) 
		QCli.message(title)
	end

	def ex_001
		self.print_title("EX001: Create a file")
		path_and_file_name = "../developer/output/test.txt"
		File.open(path_and_file_name, "w") do |file|
			file.puts("this is line 1")
			file.puts("this is line 2")
		end
		QDev.debug("File #{path_and_file_name} created")
	end

	def ex_002
		QDev.debug("ex002")
	end
end