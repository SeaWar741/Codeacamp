edad = 12
case edad
when 0..6
  puts "infancia"
when 6..12
  puts "niñez"
when 12..20
  puts "adolecencia"
when 20..25
  puts "adultez"
when 25..60
  puts "ancianidad"
else
  puts "ancianidad"
end


var1 = [20,21,22,23,24,25,26,27,28,29,30]

var1.each do|x|
  x += 5
  puts "#{x}"
end