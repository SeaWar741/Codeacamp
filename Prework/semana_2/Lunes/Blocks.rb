#se requiere la clase prime
require "Prime"

def prime (number)
  p yield number
  #se da yield al number
end

prime(10){|number|Prime.first(number)} #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

 #se requiere la calse date
require "Date"

def average_grade(grades)
  t1 = Time.now
  #t1 es igual al tiempo del inicio, se requiere el tiempo inicial
  p "------------Time started----------"
  #se imprime el texto
  p "Start time: #{t1}"
  #se imprime el tiempo de inicio usando la variable t1
  puts
  #se usa para salto de linea
  p "Average is #{yield grades}"
  #se imprime el texto y se da yield a la manera para sacar el promedio
  puts
  #se usa para salto de linea
  t2 = Time.now 
  #se requiere la variable t2 que es igual al tiempo del final, se pide el tiempo de nuevo   
  p "End time :#{t2}"
  #se imprime el texto mas el tiempo final
  final= (t2 - t1) * 1000.0
  #variable final que es igual al tiempo final menos el tiempo inicial por 10000 para que sea en milisegundos

  p "-------------Time finished--------"
  #se imprime el texto
  "Result: #{final}"
  #se imprime el texto mas la variable final
end


#test
p average_grade([10,8,7,9,10,10,9]){|grades| grades.inject{ |sum, el| sum + el }.to_f / grades.size}