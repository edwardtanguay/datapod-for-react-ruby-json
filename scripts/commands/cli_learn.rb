require_relative '../qtools/qdev'

QDev.debug("in learn script")

ARGV.each do |arg|
  QDev.debug("Argument: #{arg}")
end