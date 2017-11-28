def fizzbuzz (min, max)
  arry=[]
  #array vacio
  (min..max).each do |x|
    #el rango dice que del minimo al maximo cambia a x
    if x%3 == 0 && x%5 == 0
      #condicion que dice: si el modulo de x 3 es igual a 0 y el modulo de x 5 es igual a 0 entonces se añade a el array vacio la palabra "fizzbuzz" 
      arry << "FizzBuzz"
    elsif x%3 == 0
      #concicion que dice si el modulo de x 3 es igual a 0 entonces se añade la palabra "fizz" al array
      arry << "Fizz"
    elsif x%5 == 0
      #condicion que dice si el modulo de x 5 es igual a 0 entonces se añade la palabra "Buzz" al array
      arry << "Buzz"
    else
      #en caso de que no cumplan las condiciones se añade x al array
      arry << x 
    end
  end
  p arry
  #se muestra el array
end

# Pruebas

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]