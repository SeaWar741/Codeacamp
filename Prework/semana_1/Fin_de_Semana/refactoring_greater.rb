def greater_than(a,b)
  p == a>b ? "#{a} is greater than #{b}" :"#{b} is greater than #{a}"
  #imprimir si a>b y es verdadero entonces imprime que a es mayor a b, si es falso entonces imprime que b es mayor a "a"
  
end
#test
p greater_than(56, 70) == "70 is greater than 56"
p greater_than(56, 58) == "58 is greater than 56"
p greater_than(15, 20) == "20 is greater than 15"