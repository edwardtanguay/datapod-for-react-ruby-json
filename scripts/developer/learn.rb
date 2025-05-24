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
		self.print_title("EX002: Various ways to print text")
		puts "hello 1" # automatically adds a newline
		print "hello 2\n" # prints without newline
		p "hello 3" # prints everything including quotes and newlines
		p "hello 4" # prints everything including quotes and newlines
	end

	def ex_003
		self.print_title("EX003: String interpolation and concatenation")
		age = 34
		puts "Your age is #{age}" # string interpolation
		puts "Your age is " + age.to_s # concatenation with conversion to string 
	end
end