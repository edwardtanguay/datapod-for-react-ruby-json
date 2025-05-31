class SmartTextFile
  @@file_count = 0

  def initialize(filename)
    @filename = filename
    @@file_count += 1
  end

  def get_info
    "This is a smart text file named #{@filename}."
  end

  def self.file_count
    @@file_count
  end
end

stf = SmartTextFile.new("example.txt")
stf2 = SmartTextFile.new("example.txt")
puts "\n=== SMART TEXT FILE OBJECT ==="
puts stf.get_info
puts "\n=== SMART TEXT FILE CLASS ==="
puts SmartTextFile.file_count