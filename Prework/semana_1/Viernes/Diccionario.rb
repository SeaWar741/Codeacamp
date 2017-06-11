p "Escribe una palabra"
#imprime texto
def diccionary_sort
  arry=[]
  #array vacio donde se van a guardar las entradas
    word= gets.chomp
    #variable word es igual a la entrada del usuario
  while word != ""
    #mientras la palabra sea diferente de un string vacio (lo que hace el enter) entonces
      
      arry << word
      #la palabra se inserta en el array
        p"Escribe otra palabra (o presiona 'enter' para finalizar)"
        #se imprime el texto de instruccion
        word= gets.chomp
        #word es igual a obtener la entrada del usuario
  end
    arry
    #se pone el array
    num= arry.count
    #variable num es igual a contar la cantidad de items dentro del array
    p"felicidades! Tu diccionario tiene #{num} palabras"
    #imprimir y decir cuantos items existen
  puts arry.sort_by { |word| word.downcase }
  #se imprime en lista vertical el array ordenado por orden alfabetico sin importar si es mayuscula o no
     
end

diccionary_sort