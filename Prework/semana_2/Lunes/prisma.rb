def prism_type (l1,l2,l3)
  if l1 == l2 && l2==l3
    #si el lado 1 es igual al lado 2 y si el lado 2 es igual al lado 3 entonces
    "cubo"
    #imprime cubo
  elsif l1 == l2 && l2!=l3
    #si el lado 1 es igual al lado 2 y el lado 2 no es igual al 3 entonces
    "prisma rectangular"
    #imprime prisma rectangular
  else
    #si no se cumple ningua de las condiciones de arriba entonces
    "cuboide"
    #imprime cuboide
  end
end

# Pruebas

p prism_type(5, 5, 5) == "cubo"
p prism_type(5, 5, 4) == "prisma rectangular"
p prism_type(5, 4, 3) == "cuboide"
p prism_type(10, 8, 2) == "cuboide"