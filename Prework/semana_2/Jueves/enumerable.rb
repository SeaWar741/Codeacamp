def odd_indexed(arr)
	arr.values_at(* arr.each_index.select {|i| i.even?})
	#selecciona los valores que estan en indices impares
end

def long_strings(arr)
	arry =[]
	arr.each do |x|
	#toma cada elemento del array
		if x.length >=5
			#si el elemento es mayor o igual a 5 se inserta en el array
			arry<<x
			
		end
	end
	arry
	#se imprime el array con los elementos 
end

def start_with_h(arr)
	arry = []
	arr.each do |x|
	#cada elemento del array 
		if x.start_with?('h')
			#si el elemento inicia con h entonces se inserta en el array
			arry<<x
		end
	end
	arry[0]
	#se imprime el elemento en el indice 0 del array 
end

def capitalize_array(arr)
	arry = []
	arr.each do |x|
		#cada elemento 
		arry << x.capitalize
		#se hace la primer letra del elemento mayuscula
	end
arry
#se imprime el array con las palabras ya convertidas
end

def group_by_starting_letter(arr)
	h = {}
	#hash
	a =[]
	#array para el value a
	b =[]
	#array para el value b
	arr.each do |x|
		#cada elemento del array
		if x.start_with?('a')
			#si el elemento del array inicia con la letra se inserta en su respectivo array
			a << x
			h.merge!("a"=> a)
			#luego se junta el array con el key
		elsif x.start_with?('b')
			b << x
			h.merge!("b"=> b)
		end
	end
	h
	#se imprime el hash
end

def number_of_r(str)
	str.scan(/[r]/).count
	#se escanea el string buscando el numero de r que contiene
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"])== ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"])== {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4