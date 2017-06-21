class Vehicle

  def initialize(age=0)
    @age=age
  end

  def what_am_i?
        self.class
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
  end

  def age!
    @age
  end

  def age
    @age
  end

  def number_of_gears
      number_of_gears
  end

  def color
    color
  end

  def number_of_wheels
    number_of_wheels
  end
end

class Motorized < Vehicle
  def has_motor?
    true
  end
  def tank_size
    true
  end
  def refuel
    true
  end
end

class Motorbike < Motorized
  number_of_wheels = 2
  color = "yellow"
  number_of_gears = 15
end

class Car < Motorized
  number_of_wheels = 4
  color = "blue"
  number_of_gears = 23
end

class Bicycle < Vehicle
  number_of_wheels = 2
  color = "black"
  number_of_gears = 12
end

class Skateboard < Vehicle
  number_of_wheels = 4
  color = "red"
  number_of_gears = 8
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end

#se creo un metodo en la superclass y en las subclases se inserto el valor. se conectaron los que tenian motor con la clase superior motor para que compartieran las mismas caracteristicas y metodos