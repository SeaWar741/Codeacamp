def shortest(array)
arry=[]
#array vacio donde se van a guardar los strings mas cortos
x= array.sort_by {|word| word.length}
y= x[0].length

array.each do |z|
  if z.length == y
    arry << z
  end
end
  arry 
end   

# Pruebas
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == ["uno", "dos"]
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == ["gato"]
p shortest(['verde', 'rojo', 'negro', 'morado']) == ["rojo"]