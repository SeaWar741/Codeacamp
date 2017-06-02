fruit = {name: "pineapple"}
weight = {weight: "1 kg"}
taste = {taste: "good"}

def join_hash(a1,a2,a3)
  a = [a1,a2,a3]
  #variable a que incluye a los 3 hashes que van a ser evaluados
  Hash[*a.map(&:to_a).flatten]
  #se crea un hash nuevo, se evaluan las key y valores de cada uno y los junta dentro del hash nuevo
end

#test
p join_hash(fruit, weight, taste) == {:name=>"pineapple", :weight=>"1 kg", :taste=>"good"}  