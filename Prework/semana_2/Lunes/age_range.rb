def total_between_age (array, min_age, max_age)
  arry=[]
  #array vacio donde se va a guardar las edades dentro del rango
  array.each do |x|
  #hace que cada valor dentro del array pase a ser x
     x.between?(min_age,max_age) ? arry << x : "no"
     #si x esta entre los valores de edad minima y maxima entonces se inserta en el array si no no
  end
  arry
  #se muestra el array
  arry.count
  #se cuenta el numero de items dentro del array
end

#test
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4