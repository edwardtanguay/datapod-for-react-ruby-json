require_relative '../qtools/qstr'
require_relative '../qtools/qdev'
require_relative '../qtools/qfil'

class SmartBlock
	attr_accessor :blockTemplateIdCode, :markerBlockIdCode, :pre_tabs

	def initialize(blockTemplateIdCode, markerBlockIdCode, pre_tabs = 0)
		@blockTemplateIdCode = blockTemplateIdCode
		@markerBlockIdCode = markerBlockIdCode
		@pre_tabs = pre_tabs
		self.init_state
	end

	def init_state
		puts "SmartBlock init_state"	
		lines = QFil.get_lines_from_file("../templates/blockTemplate_#{@blockTemplateIdCode}.txt")
		QDev.debug("SmartBlock init_state: lines.length = #{lines.length}")
	end

	def add_to_smart_lines(smart_lines)
		puts "SmartBlock add_to_smart_lines"
	end

	def debug
		puts "SmartBlock Debug:"
		puts "  blockTemplateIdCode: #{@blockTemplateIdCode}"
		puts "  markerBlockIdCode: #{@markerBlockIdCode}"
		puts "  pre_tabs: #{@pre_tabs}"
	end
end