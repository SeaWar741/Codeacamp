class Animal
	def composition
		p "Cells"
	end

	def type
		when class Dog || class Turtle || class Fish || class Cat
			p "Pet"
		else
			p "Savage"
		end	
	end

	def ecosystem
		when region = "ocean" || region = "river"
			p "Acuatic"
		else
			p "Terrestrial"		
	end
end

class Dog < Animal
	region = "Meadow"

end

class Turtle < Animal
	region = "ocean"
end

class Macaw < Animal
	region = "Jungle"
end

class Fish < Animal
	region = "ocean"
  def swim
  end
end

class Dolphin < Animal
	region = "ocean"
end

class Reptile < Animal
	region = "forest"
  def has_scales?
  end
end
 
class Cat < Animal
	region = "Meadow"
end

class Whale < Animal
	region = "ocean"
end

class Snake < Animal
	region = "rainforest"
end

class Mammal < Animal
  def warm_blooded?
  end
end

class Bird < Animal

end

#test
#Aquí deben ir las pruebas correspondientes