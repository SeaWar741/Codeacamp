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
  x= word.canonical
  y= dictionary.each
  z= y.canonical

  if z == x
    arry << z

end
arry
end

p are_anagrams?("pepe", "epep") == true
p anagrams_for["mora", ("raul", "maro", "arom")]
#== ["mora", "maro", "arom"]