def large(words)
  if words.length >= 20
    p words.upcase
  else
    p words
  end
end

p large("Hola vamos a la comida") == "HOLA VAMOS A LA COMIDA"
p large("Es hora de dormir") == "Es hora de dormir"