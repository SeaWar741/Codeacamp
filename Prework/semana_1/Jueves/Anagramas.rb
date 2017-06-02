 def canonical(word)
  word.chars.sort(&:casecmp).join
  #ordena los caracteres de la palabra en orden alfabetico y los junta
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
  #compara la palabra 1 con la palabra 2 con el metodo canonical, si son iguales arroja True
end

def anagrams_for(word, dictionary)
  arry= []
   #array vacio donde se van a guardar los strings
    arry<<word
    #se inserta la palabra dentro del array
    x= canonical(word)
    #variable x es igual a llamar el metodo canonical para word
    dictionary.each do |z|
    #hace de cada palabra dentro del array la variable "z"
      if canonical(z) == x
        #si la variable z que llama al metodo canonical es igual a x, = true
       arry << z
       # si es true entonces se inserta la variable "z" dentro del array
      end
  end
arry
#se llama al array ya con todo lo insertado
end

#pruebas
p are_anagrams?("pepe", "epep") == true
p anagrams_for("mora", ["raul", "maro", "arom"]) == ["mora", "maro", "arom"]