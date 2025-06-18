class GenericParsedBlock
	def initialize(generic_parsed_lines)
		@generic_parsed_lines = generic_parsed_lines
	end

	def render_as_html
		html = '<div class="parsedDpodBlock">'
		@generic_parsed_lines.each do |gpl|
			html += gpl.render_as_html
		end
		html += "</div>"
		html
	end
end