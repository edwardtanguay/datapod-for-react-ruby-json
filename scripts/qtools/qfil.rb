require_relative './qcli'
require_relative './qdev'
require_relative './qstr'

module QFil

	def self.get_lines_from_file(relativePathAndFileName)
		pathAndFileName = self.rebase_to_root(relativePathAndFileName)
		begin
			file_content = File.read(pathAndFileName)
			file_content.split(/\r?\n/)
		rescue => error
			QCli.message("Error reading file at #{pathAndFileName}: #{error.message}", "error")
			[]
		end
	end

	def self.write_text_block_to_file(relativePathAndFileName, text)
		pathAndFileName = self.rebase_to_root(relativePathAndFileName)
		File.write(pathAndFileName, text)
	end

	def self.write_lines_to_file(relativePathAndFileName, lines)
		pathAndFileName = self.rebase_to_root(relativePathAndFileName)
		begin
			File.open(pathAndFileName, 'w') do |file|
				lines.each { |line| file.puts(line) }
			end
		rescue => error
			QCli.message("Error writing to file at #{pathAndFileName}: #{error.message}", "error")
		end
	end

	def self.rebase_to_root(pathAndFileName)
		if pathAndFileName.start_with?('scripts/')
			pathAndFileName.gsub('scripts/', '../')
		else
			"../../#{pathAndFileName}"
		end	
	end

	# deletes a file at the specified path
	def self.delete_file(relativePathAndFileName)
		pathAndFileName = self.rebase_to_root(relativePathAndFileName)
		begin
			File.delete(pathAndFileName)
		rescue => error
			QCli.message("Error deleting file at #{pathAndFileName}: #{error.message}", "error")
		end
	end

	# checks if a file exists at the specified path
	def self.file_exists?(relativePathAndFileName)
		pathAndFileName = self.rebase_to_root(relativePathAndFileName)
		File.exist?(pathAndFileName)
	end	

end