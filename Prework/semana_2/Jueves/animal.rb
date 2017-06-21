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
	def life_conversion
		"12 to 18 months from a dogs life is equal to 15 to 20 years"
	end
	extremities = 4
end

class Turtle < Reptile
	extremities = 4
	def speed
		"slow walkers fast swimers"
	end
end

class Macaw < Bird
	extremities = "nd"
	def habilities
		"Macaws are intelligent, social creatures who can be taught to talk! Other features are like:"

		"All species of macaws have very powerful, large beaks and large macaws are capable of destroying household furnishings and can potentially cause considerable harm to both children and adults."

		"They love exercise and playtime."

		"They can perform tricks if trained properly."

		"Macaws are noisy. Their vocalizations can be loud and they can screech extremely loudly! They do have a fairly good capability to mimic speech, although probably not as clearly as Amazons and African greys."
	end
end

class Fish < Animal
  def swim?
  	true
  end
	extremities = "nd"
end

class Dolphin <Mammal
	def playful_and_Agile?
	true
	end
	extremities = "nd"
end

class Cat < Mammal
	extremities = 4
	def lives
		7
	end
end

class Whale < Mammal
	def diet
		"microscopic plankton to large marine mammals"
	end
	extremities = "nd"
end

class Snake < Reptile
	def av_life_span
		"9 years"
		
	end
extremities = "nd"
end


#test
#Aquí deben ir las pruebas correspondientes

clifford = Dog.new

p clifford.life_conversion == "12 to 18 months from a dogs life is equal to 15 to 20 years"
p clifford.composition == "Cells"
p clifford.warm_blooded? == true

donatello = Turtle.new

p donatello.speed == "slow walkers fast swimers"
p donatello.has_scales? == true

piolin = Macaw.new
p piolin.habilities
	#=> "Macaws are intelligent, social creatures who can be taught to talk! Other features are like:"
		# "All species of macaws have very powerful, large beaks and large macaws are capable of destroying household furnishings and can potentially cause considerable harm to both children and adults."

		# "They love exercise and playtime."

		# "They can perform tricks if trained properly."

		# "Macaws are noisy. Their vocalizations can be loud and they can screech extremely loudly! They do have a fairly good capability to mimic speech, although probably not as clearly as Amazons and African greys."
p piolin.beak == true

nemo = Fish.new

p nemo.swim? == true
p nemo.composition == "Cells"

flipper = Dolphin.new

p flipper.playful_and_Agile? == true
p flipper.composition == "Cells"
p flipper.warm_blooded? == true

garfield = Cat.new

p garfield.lives == 7
p garfield.composition == "Cells"
p garfield.warm_blooded? == true

shamu = Whale.new

p shamu.diet == "microscopic plankton to large marine mammals"
p shamu.composition == "Cells"
p shamu.warm_blooded? == true

naga = Snake.new

p naga.av_life_span == "9 years"
p naga.composition == "Cells"
p naga.has_scales? == true