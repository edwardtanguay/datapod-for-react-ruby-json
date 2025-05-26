class Vehicle
  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
	display_info
  end

end

class Car < Vehicle
  def display_info
    puts "Car Information:"
    puts "Make: #{@make}"
    puts "Model: #{@model}"
    puts "Year: #{@year}"
  end
end


car = Car.new("Toyota", "Corolla", 2020)

puts "\n=== CAR OBJECT ==="
puts car
p car

puts "\n=== CAR INFORMATION ==="
car.display_info

puts "\n=== UPDATING CAR INFORMATION ==="
car.year = 2021  # Update the year
car.display_info