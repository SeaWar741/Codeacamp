def factorial (number)
  (1..number).inject(:*) || 1
  #rango de uno hasta el numero que se desea, se injecta una multiplicacion por cada numero en el rango
  #se multiplican todos los numeros dentro del rango
  # o si es uno el numero deseado entonces el factorial de uno es si mimsmo, es decir 1
end

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720