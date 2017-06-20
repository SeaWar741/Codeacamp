class Vehicle
	def self.number_of_vehicles
 	x = ObjectSpace.each_object(Vehicle).count
 	#cuenta los objetos creados dentro de la clase padre de vehicle
 	"This Superclass has created #{x} vehicles"
	end
end

class Car < Vehicle

end

class Bus < Vehicle

end



#test
car_1 = Car.new
car_2 = Car.new
bus_1 = Bus.new

p Car.number_of_vehicles == "This Superclass has created 3 vehicles"
# => true