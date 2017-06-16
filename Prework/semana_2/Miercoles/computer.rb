class Computer
	attr_accessor :color
	#puede modificar o leer el color de la mac
	def initialize
		@color ="platinum"
	end
end

#test
mac = Computer.new

mac.color = "Platinum"
p mac.color == "Platinum"
mac.color ="Space grey"
p mac.color == "Space grey"