class Animal
	def composition
		"Cells"
	end

	def movement
		if extremities == 2
			"biped"
		elsif extremities == 4 
			"quadruped"
		else
			"N/A"
		end
	end
end

class Mammal < Animal
  def warm_blooded?
  	true
  end
end

class Reptile < Animal
  def has_scales?
  	true
  end
end

class Bird < Animal
	Beak = true
	def beak
		Beak
	end
end

#_______________________________

class Dog < Mammal
	extremities = 4
end

class Turtle < Reptile
	extremities = 4
end

class Macaw < Bird
	extremities = "nd"
end

class Fish < Animal
  def swim
  	true
  end
extremities = "nd"
end

class Dolphin <Mammal
extremities = "nd"
end

class Cat < Mammal
extremities = 4
end

class Whale < Mammal
extremities = "nd"
end

class Snake < Reptile
extremities = "nd"
end


#test
#Aquí deben ir las pruebas correspondientes


p Fish.swim