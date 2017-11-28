def array_index (array, x)
  arry=[]

   array.each do |z|
    (1..x).each do |y|
    arry<< [z,y]

  end

  end
    arry
end


p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]