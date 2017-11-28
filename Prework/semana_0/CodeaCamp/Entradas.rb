
#Define el método user que interactuará con el usuario para recibir cualquier 
#valor hasta que el usuario escribe la palabra "Ya". 
#Al final este método regresa el número de entradas que hizo el usuario.
#Probablemente necesitarás hacer uso de una estructura iterativa 
#y busca cómo capturar el input del usuario desde el teclado.

def user

  contador = 0

  p "Dame una entrada."
  entrada = gets.chop

  while entrada != "Ya" 

    p "Dame una entrada."
    entrada = gets.chop
    contador += 1

    p "Número de entradas del usuario: #{contador}" if entrada == "Ya"

  end

end


user



