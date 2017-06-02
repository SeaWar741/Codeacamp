 def values_hash (hash)
  #metodo para el hash
  arry=[]
  hash.each_key do |key|
  #toma cada key del hash y lo vuelve key 
    key
    arry << key
    #inserta el key dentro del array
  end
  arry
end

#test
p values_hash({ "a" => 100, "b" => 200 }) == ["a","b"]