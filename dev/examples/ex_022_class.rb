class Person
	attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello, #{@name}!"
  end
end

person = Person.new("Laura")
person.greet
puts "Person object: #{person.inspect}"
puts person.name
person.name = "Hans"
person.greet