 def values_hash (hash)
  #metodo para el hash
  arry=[]
  hash.each_value do |value|
  #toma cada valor del hash y lo vuelve value
    value
    arry << value
    #se inserta el value dentro del array
  end
  arry
end

#test
p values_hash({ "a" => 100, "b" => 200 }) == [100,200] #true 