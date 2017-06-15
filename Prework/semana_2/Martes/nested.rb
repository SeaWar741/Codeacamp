def chess
	a = [["Torre","Caballo","Alfil","Rey","Reina","Alfil","Caballo","Torre(A)|"],["Peon","Peon","Peon","Peon","Peon","Peon","Peon","Peon(B)|"]]
	b = [["Torre","Caballo","Alfil","Rey","Reina","Alfil","Caballo","Torre(B)|"],["Peon","Peon","Peon","Peon","Peon","Peon","Peon","Peon(B)|"]]
	blank = ["O","O","O","O","O","O","O","O"]
	width = blank.flatten.max.to_s.size+11
	#el ancho de espacio en la zona "vacia" del tablero
	puts '_______________________________________________________________________'
	a.each { |x|
		print "|" 
 	puts x.join("(A)""|"" ""|")} 
 	#imprime para cada uno de los elementos dentro del array la leyenda |"pieza"(A)| 
	puts blank.map { |a| blank.map { |i| i.to_s.ljust(width) }.join} 
	#imprime el espacio en blanco tomando en cuenta que hay un espacio de separacion designado mas el espacio total por fila. El area de esta zona en blanco es 8X8
 	puts '_______________________________________________________________________'
 	b.each { |x|
 		print "|"
 	puts x.join("(B)""|"" ""|")} 
 	#sucede lo mismo que con las piezas del array a
 	puts '_______________________________________________________________________'
end

chess


table = [["Nombre","Edad","Genero","Grupo","Calificaciones"],
		 ["Rodrigo Garcia",13,"Masculino","Primero",[9, 9, 7, 6, 8]],
		 ["Fernanda Gonzalez",12,"Femenino","Tercero",[6, 9, 8, 6, 8]],
		 ["Luis Perez",13,"Masculino","Primero",[8, 7, 7, 9, 8]],
		 ["Ana Espinosa",14,"Femenino","Segundo",[9, 9, 6, 8, 8]],
		 ["Pablo Moran",11,"Masculino","Segundo",[7, 8, 9, 9, 8]]]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6