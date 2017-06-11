def elephant
    numero=0
    #variable para loop elefante
    breaks= gets.chomp
    #variable breaks es igual a la entrada del usuario
    while numero < breaks.to_i  do
    #loop que dice: mientras el numero sea menor a la entrada del usuario entonces:
    puts("#{numero} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante." )
    #puts el numero dentro de la frase
    numero = numero +1
    #hace que el numero se aumente uno
    #esto se repite hasta cumplir con la condicion establecida anteriormente
  end
puts "La tela de la araña se rompio cuando #{numero} se columpiaban sobre la tela de una araña"
end


def beer
    num = 99
    #variable para loop cerveza
    breaks=gets.chomp
    #variable breaks es igual a la entrada del usuario
  while num > breaks.to_i-1 do
    #loop que dice: mientras el num sea mayor a la entrada del usuario entonces:
    puts("#{num} bottles of beer.")
    #imprime el num mas la frase
    num = num -1
    #hace que el numero se le reste uno
    #esto se repite hasta cumplir con la condicion establecida anteriormente
  end 
end


elephant
beer
