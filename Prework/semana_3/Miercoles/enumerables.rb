# Dado un array de números imprime únicamente los elementos que contienen un indice impar
# Utiliza: Enumerable#each_with_index
def print_odd_indexed_integers(array)
	arry = []
	array.each_with_index do |value,index|
		#se toma cada elemento con el indice
		valor = index % 2
		# variable valor es igual a el indice matriz de dos
		arry << value if valor == 1 
		#se inserta en el array si el valor de la variable valor es igual 1 siendo asi un numero en el indice impar
end
	puts arry
	#imprime el array donde se inserto
end

# Dado un array de números regresa un array con solo sol numeros impares
# Utiliza: Enumerable#select
def odd_integers(array)
	array.select {|num| num.odd?}
	#se hace un select basado en la condicion de que sea impar 
end

# Dado un array y un límite regresa el primer numero que sea menor al límite 
# Utiliza: Enumerable#find
def first_under(array, limit)
	array.find { |i| i if i < limit && i !=0}
	#busca en el array haciendo cada string a i, si i es menor al limite y diferente de 0 entonces se imprime el i
end


# Dado un array de strings y regresa un nuevo array donde todos los elementos contengan al final un signo de admiración. 
# Utiliza: Enumerable#map
def add_bang(array)
	array.collect {|x| x + "!" }
	#se busca y juntan todos los elementos que contengan un !
end

# Dado un array de números calcula la suma de todos sus elementos. 
# Utiliza: Enumerable#reduce
# Repite el ejercicio con Enumerable#inject
def sum(array)
	array.inject(0){|sum,x| sum + x }
end


# Dado un array de string reorganizalo en grupos de tres y ordénalos alfabéticamente.  
# Utiliza: Enumerable#each_slice
def sorted_triples(array)
	arry = []
	#array nuevo donde se va a insertar todo
	array.each_slice(3){ |word| arry<<word.sort}
	#se hace un slice cada 3 palabras, se inserta el word en el array de manera alfabetica
	arry
	#se imprime el array
end

# Driver code... no modifiques nada de este código 
print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) 
# => 4
# => 8
# => 12

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(De esta simple manera se puede reorganizar una oración)  
p sorted_triples(words) == [["De", "esta", "simple"], ["manera", "puede", "se"], ["oración", "reorganizar", "una"]]            