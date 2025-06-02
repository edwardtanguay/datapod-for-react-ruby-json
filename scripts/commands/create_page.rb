require_relative '../qtools/qcli'
require_relative '../qtools/qdev'
require_relative '../classes/dynamic_file'

dynamic_file = DynamicFile.new('../../data/flashcards.txt')
dynamic_file.debug

