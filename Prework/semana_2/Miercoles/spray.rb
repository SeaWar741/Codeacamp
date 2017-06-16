class Door
	attr_writer :color
	#modifica el color 

	def spray_paint(color)
		 "The #{color.capitalize} door looks great!"
		 #imprime el texto y la primer letra del color la hace mayuscula
	end
end

big_door = Door.new

p big_door.spray_paint('yellow')


# Crea el método spray_paint que pueda ser llamado sobre una instancia y modifique el color de la puerta. Haz pasar la prueba.

# #test
 p big_door.spray_paint('yellow') == "The Yellow door looks great!"
 p big_door.spray_paint == "The Grey door looks great!"