require "Prime"

def prime (number)
  p yield number
end

prime(10){|number|Prime.first(number)} #=> [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

#método que usa yield para llamar al bloque 
def average_grade
  yield
end

#método para calcular el promedio de calificaciones
def average_grade(grades)
  grades.inject(0.0) { |sum, el| sum + el } / grades.size
end

p average_grade([10,8,7,9,10,10,9])