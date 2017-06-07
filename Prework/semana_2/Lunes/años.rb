def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
  #toma el año y ve si el residuo de la division del año entre 4 es igual a 0 y si el año dividido entre 100 no da de residuo 0 o si el año dividido entre 400 da de residuo 0
  #esto ya que Los años bisiestos son los divisibles entre 4
  #excepto si es divisible entre 100, entonces no es bisiesto
  #Los años bisiestos son los divisibles entre 4
end

# Pruebas

p leap_year?(1900) == false
p leap_year?(1988) == true
p leap_year?(1989) == false
p leap_year?(1992) == true
p leap_year?(2000) == true
p leap_year?(2001) == false
p leap_year?(1600) == true  
p leap_year?(1704) == true