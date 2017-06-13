def first_letters(words)
	words.split.map(&:chr)
	#toma cada palabra+y las mete dentro de un array,mapea las palabras y toma la primer letra
end


# Pruebas

p first_letters("Hoy es miércoles y hace sol") == ["H", "e", "m", "y", "h", "s"]
p first_letters("tienes ocho candados indios nuevos omega") == ["t", "o", "c", "i", "n", "o"]