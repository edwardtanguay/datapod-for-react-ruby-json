require_relative '../qtools/qcli'
require_relative '../qtools/qstr'

term = ARGV[0]

QCli.message("TERM: #{term}", "ball")
QCli.message("text: #{QStr.force_text_notation(term)}", "check")
QCli.message("title: #{QStr.force_title_notation(term)}", "check")
QCli.message("pascal: #{QStr.force_pascal_notation(term)}", "check")
QCli.message("camel: #{QStr.force_camel_notation(term)}", "check")
QCli.message("snake: #{QStr.force_snake_notation(term)}", "check")
QCli.message("kebab: #{QStr.force_kebab_notation(term)}", "check")