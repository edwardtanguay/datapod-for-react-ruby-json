require_relative './qcli'

module QFil
	# Reads a file and returns its lines as an array of strings.
	#
	# Example:
	# lines = QFil.get_lines_from_file('../data/flashcards.txt')
	#
	# @param file_path [String] Path to the file to read
	# @return [Array<String>] Array of lines from the file, or empty array if file cannot be read
	def self.get_lines_from_file(file_path)
		begin
			file_content = File.read(file_path)
			file_content.split(/\r?\n/)
		rescue => error
			QCli.message("Error reading file at #{file_path}: #{error.message}", "error")
			[]
		end
	end

	def self.write_lines_to_file(file_path, lines)
		begin
			File.open(file_path, 'w') do |file|
				lines.each { |line| file.puts(line) }
			end
		rescue => error
			QCli.message("Error writing to file at #{file_path}: #{error.message}", "error")
		end
	end

end