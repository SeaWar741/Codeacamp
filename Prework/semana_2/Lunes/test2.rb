#método que usa yield para llamar al bloque 
require "Time"

def average_grade
  time1 = Time.new
  p "------------Time started----------"
  p "Start time: "time1.inspect""
  p ""
  p "Average is #{yield}"
  p ""
  p "End time :"time1.inspect""
  p "-------------Time finished--------"
  p "Result: "

  yield
end

#método para calcular el promedio de calificaciones
def average_grade(grades)
  grades.inject(0.0) { |sum, el| sum + el } / grades.size
end

p average_grade([10,8,7,9,10,10,9])