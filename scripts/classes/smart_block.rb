require_relative '../qtools/qstr'
require_relative '../qtools/qdev'

class SmartBlock
	attr_accessor :blockTemplateIdCode, :markerBlockIdCode, :pre_tabs

	def initialize(blockTemplateIdCode, markerBlockIdCode, pre_tabs)
		@blockTemplateIdCode = blockTemplateIdCode
		@markerBlockIdCode = markerBlockIdCode
		@pre_tabs = pre_tabs
	end

	def debug
		puts "SmartBlock Debug:"
		puts "  blockTemplateIdCode: #{@blockTemplateIdCode}"
		puts "  markerBlockIdCode: #{@markerBlockIdCode}"
		puts "  pre_tabs: #{@pre_tabs}"
	end
end