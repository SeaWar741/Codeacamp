$name = "Maria"

def counter
  $name.length
end 

def counter!
  $name = counter

end



#DRIVER CODE

puts "Valor de name: #{$name}"

puts "Llamando al método counter en name : #{counter}"

puts "Valor de name despues de pasarlo por counter: #{$name}"

puts "Llamando al método counter! en name : #{counter!}"

puts "Valor de name después de pasarlo por counter!: #{$name}"


# rfc = "madp900818"
# puts "Your curp will be #{rfc.upcase!}524778"
# name = "MARYEL"
# puts "your ticket confirmation is 697423-#{name.downcase!}"
