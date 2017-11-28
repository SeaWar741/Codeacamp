first_name = "Carlos"
first_name.upcase
p first_name
# Podemos observar que al imprimir la variable first_name, se encuentra en su estado inicial.
#=>"Carlos"
# Ya que aun usando el metodo upcase los cambios no se guardan al ser llamado de nuevo.
last_name = "Rangel"
last_name.upcase!
p last_name
#Al utilizar el exclamation marks (!),los cambios al utilizar upcase son permanentementes al ser llamada la variable.
#=>"RANGEL"

first_name = "Rogelio"
first_name.upcase!
last_name = "manzano"
last_name.capitalize!
mensaje = "Nombre Correcto"
mensaje.downcase!

puts mensaje if first_name == "ROGELIO" && last_name == "Manzano"