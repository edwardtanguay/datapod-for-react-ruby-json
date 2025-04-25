require_relative '../qtools/qdev'
require_relative '../qtools/qcli'

class Learn
	def print_title(title) 
		QCli.message(title)
	end

	def ex_001
		self.print_title("EX001: Create a file")
	end

	def ex_002
		QDev.debug("ex002")
	end
end