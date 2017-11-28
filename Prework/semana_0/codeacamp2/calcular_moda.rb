
def mode(array)
  counter = Hash.new(0)
  # counter es igual a un hash vacio sin keys con todos los valores en 0
  array.each do |x|
  #cada integrante del array pasa a ser 0
    counter[x] += 1
  #cada vez que aparece el valor se le agrega uno
  end
  mode_array = []
  #array donde se van a insertar los valores repetidos
  counter.each do |k, v|
    if v == counter.values.max
      mode_array << k
      #se inserta el numero dentro del array
    end
  end
  mode_array.sort
  #regresa el array ordenado 
end

# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]

