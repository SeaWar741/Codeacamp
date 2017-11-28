arr = []
def array_index (array, x)
 ary= Array.new
 while ary << array 
  ary << array[0]
  ary << array [1]
  ary << array [2]

 end
end

#test
p array_index(["c", "b", "a"], 2) 
#== [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) 
#== [["a", 1], ["a", 2], ["a", 3]]