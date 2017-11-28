def shortest(array)
arry=[]
#array vacio donde se van a guardar los strings mas cortos
array.each do |x|
x.length.sort
end   


p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco'])