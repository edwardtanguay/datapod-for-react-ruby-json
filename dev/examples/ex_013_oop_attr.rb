class SmartTextFile
  attr_accessor :filename

  def initialize(filename)
    @filename = filename
  end

  def get_info
    "This is a smart text file named #{@filename}."
  end
end

class SmartJsonFile
  attr_accessor :filename, :lines

  def initialize
    @filename = "default.json"
    @lines = []
  end

  # def lines
  #   @lines = ['apple', 'banana', 'cherry', 'date', 'elderberry']
  # end
end

stf = SmartTextFile.new("example.txt")
stf.filename = "new_example.txt"  # This will raise an error since filename is read-only

test = "okok"
p test.class
p stf.class
p stf.filename.class
puts "\n=== SMART TEXT FILE OBJECT ==="
puts stf.get_info

puts "\n=== SMART JSON FILE CLASS ==="
sjf = SmartJsonFile.new
sjf.filename = "example.json"  
p sjf.filename.class
p sjf.lines.class

if sjf.lines.class == Array
  puts "sjf.lines is an Array"
else
  puts "sjf.lines is not an Array"
end
sjf.lines << 'kiwi'
sjf.lines += ['kiwi2', 'kiwi3']

puts sjf.lines.length
puts sjf.lines
