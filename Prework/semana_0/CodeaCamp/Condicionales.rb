#etapas
edad = 34
case edad
when 0..6
  puts "Infancia"
when 7..12
  puts "Niñez"
when 13..20
  puts "Adolesencia"
when 21..25
  puts "Juventud"
when 26..60 
  puts "Adultez"
else
  puts "Ancianidad"
end

#suma de valores
arreglo = [3,6,9,12,15]

arreglo.each do |x|
  x += 5
  puts "#{x}"
end

