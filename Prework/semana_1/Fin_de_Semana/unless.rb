def swim(time)
  limit = 10
  #limite es igual a 10
  p "#{time} seconds... New Record for 50 meters" unless time > limit
  #se imprime a no ser que el tiempo sea mayor al limite
end

#test
p swim(5) == "5 seconds... New Record for 50 meters"
p swim(8) == "8 seconds... New Record for 50 meters"