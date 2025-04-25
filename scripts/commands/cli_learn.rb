require_relative '../qtools/qdev'
require_relative '../developer/learn'

Learn.new.ex_001

ARGV.each do |arg|
  QDev.debug("Argument: #{arg}")
end