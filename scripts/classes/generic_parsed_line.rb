class GenericParsedLine
	attr_accessor :is_empty, :is_multiline

	def initialize(string_or_array)
		@is_empty = false
		@is_multiline = false
		@line = ""
		@multiple_lines = []

		if string_or_array.is_a?(String)
			@line = string_or_array.strip
			if(@line.length == 0)
				@is_empty = true
			end
		elsif string_or_array.is_a?(Array)
			@multiple_lines = string_or_array
			@is_multiline = true
		else
			puts "BAD TYPE in GenericParsedFile"
		end
	end

	def render_as_html
		if(!@is_empty)
			if(@is_multiline)
				html = "<p>"
				@multiple_lines.each do |ml|
					html += "#{ml}<br/>"
				end
				html += "</p>"
			else
				"<p> " + @line + "</p>"
			end
		else
			"<p>&nbsp;</p>"
		end
	end
end