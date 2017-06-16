def random
	    puts "#{rand(4..5)} | #{rand(4..5)} | #{rand(4..5)}",
	    		#imprime las columnas segun un numero random
         	 "---------",
             "#{rand(4..5)} | #{rand(4..5)} | #{rand(4..5)}",
             "---------",
             "#{rand(4..5)} | #{rand(4..5)} | #{rand(4..5)}"
    	print "\n"
end

def randomize
	a = rand(4..5)
	b = rand(4..5)
	c = rand(4..5)
	d = rand(4..5)
	e = rand(4..5)
	f = rand(4..5)
	g = rand(4..5)
	h = rand(4..5)
	i = rand(4..5)
	    puts "#{a} | #{b} | #{c}",
         	 "---------",
             "#{d} | #{e} | #{f}",
             "---------",
             "#{g} | #{h} | #{i}"
    	print "\n"
    	#Imprime las columnas segun un numero random
end


random
p'----------------------------------'
puts
randomize
#se llama al metodo randomize

head  = ["Nombre","Edad","Genero","Grupo","Calificaciones"]
table = [["Rodrigo Garcia",13,"Masculino","Primero",[9, 9, 7, 6, 8]],
        ["Fernanda Gonzalez",12,"Femenino","Tercero",[6, 9, 8, 6, 8]],
        ["Luis Perez",13,"Masculino","Primero",[8, 7, 7, 9, 8]],
        ["Ana Espinosa",14,"Femenino","Segundo",[9, 9, 6, 8, 8]],
        ["Pablo Moran",11,"Masculino","Segundo",[7, 8, 9, 9, 8]]]

ret2 = table.map {|row| head.zip(row).to_h }
#se hace un zip por columna tomando como keys el head y como values table. todo se inserta dentro de un hash
p ret2 ==[{"Nombre"=>"Rodrigo Garcia", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]}, {"Nombre"=>"Fernanda Gonzalez", "Edad"=>12, "Genero"=>"Femenino", "Grupo"=>"Tercero", "Calificaciones"=>[6, 9, 8, 6, 8]}, {"Nombre"=>"Luis Perez", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[8, 7, 7, 9, 8]}, {"Nombre"=>"Ana Espinosa", "Edad"=>14, "Genero"=>"Femenino", "Grupo"=>"Segundo", "Calificaciones"=>[9, 9, 6, 8, 8]}, {"Nombre"=>"Pablo Moran", "Edad"=>11, "Genero"=>"Masculino", "Grupo"=>"Segundo", "Calificaciones"=>[7, 8, 9, 9, 8]}]
#se imprime el ret2
p ret2[0] == {"Nombre"=>"Rodrigo Garcia", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]}

p ret2[1]["Nombre"] == "Fernanda Gonzalez"

p ret2[3]["Grupo"] == "Segundo"

p ret2[4]["Genero"] == "Masculino"

p ret2[2]["Edad"] == 13