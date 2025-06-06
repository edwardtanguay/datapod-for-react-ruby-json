require_relative './qcli'

module QFil
	# Reads a file and returns its lines as an array of strings.
	#
	# Example:
	# lines = QFil.get_lines_from_file('../data/flashcards.txt')
	#
	# @param pathAndFileName [String] Path to the file to read
	# @return [Array<String>] Array of lines from the file, or empty array if file cannot be read
	def self.get_lines_from_file(pathAndFileName)
		begin
			file_content = File.read(pathAndFileName)
			file_content.split(/\r?\n/)
		rescue => error
			QCli.message("Error reading file at #{pathAndFileName}: #{error.message}", "error")
			[]
		end
	end

	def self.write_lines_to_file(pathAndFileName, lines)
		begin
			File.open(pathAndFileName, 'w') do |file|
				lines.each { |line| file.puts(line) }
			end
		rescue => error
			QCli.message("Error writing to file at #{pathAndFileName}: #{error.message}", "error")
		end
	end

	# deletes a file at the specified path
	def self.delete_file(pathAndFileName)
		begin
			File.delete(pathAndFileName)
		rescue => error
			QCli.message("Error deleting file at #{pathAndFileName}: #{error.message}", "error")
		end
	end

	# checks if a file exists at the specified path
	def self.file_exists?(pathAndFileName)
		File.exist?(pathAndFileName)
	end	

end