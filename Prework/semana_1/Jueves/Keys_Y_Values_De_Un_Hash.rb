  def values_hash (hash)
  arry=[]
  #metodo para el hash
  hash.each {|key,value|  arry<<"la llave del hash #{key} y su valor es #{value}"}
  #toma cada string del hash con su key y valor e imprime el valor de cada string
  arry
end

#test
p values_hash({ "a" => 100, "b" => 200 }) == ["la llave del hash a y su valor es 100", "la llave del hash b y su valor es 200"] 