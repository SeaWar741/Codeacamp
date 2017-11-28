#metodo mediana
def median(ary)
  mid = ary.length / 2
#variable mid es igual a la longitud del array entre 2
  sorted = ary.sort
#variable sorted es igual tomar cada valor dentro del string
  ary.length.odd? ? sorted[mid] : 0.5 * (sorted[mid] + sorted[mid - 1])
#si la longitud del array es par y el valor de la midad es a cada valor con el indice mid mas cada valor con el indice mid-1
end

# Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8