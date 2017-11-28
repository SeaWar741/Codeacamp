#
def user
  p"Escribe cuantos numeros quieras"
  number = ""
  count = 0
  # 
  while number != "ya"
    number = gets.chomp
    count += 1
  end
  #
  p "gracias"
  p "el numero de entradas fue de #{count - 1}"
end

p user 