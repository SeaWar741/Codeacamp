# ¿Qué tipo de datos son cada una de las siguientes variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 9.0
w = ["1", "f", 4]
x = 1.4
y = "3"
z = {name: "Javier", email: "mail@codea.mx", fase: 1}
# Respuesta
#v= float 
#w= array
#x= float
#y=string
#z=hash

#se puede saber su clase con "variable".class


#________________________________________________________________
# Obtén el valor del cuarto elemento de la lista `fruits` utilizando código. Y cambia el segundo valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach", "pineapple", "kiwi"]
# Respuesta
p fruits[3]
fruits.each do |x|
  if x== "orange"
    x.replace("banana")
  end
  fruits
end
p fruits

#________________________________________________________________
# Obtén el último elemento de la lista `sports`.
sports = ["rugby", "tennis", "soccer", "cycling", "baseball"]
# Respuesta
p sports[-1]


#________________________________________________________________
# Añade un elemento más al principio de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta
p gadgets.insert(0,'smartwatch')

#________________________________________________________________
my_hash= {}
grades={'matematicas'=>9, 'español'=>10, 'ingles'=>9}
grades['frances']= 9

arry=[]
x= grades.values
 arry<<x.sort
highest_grade = arry[-1]

#________________________________________________________________
def large_word(word)
  x= word.length
  if x >6
    "Large"
  else 
    "Small"
end
end


#test
p large_word("pepe") == "Small"
p large_word("Helados") == "Large"
#________________________________________________________________
def print_plus_ten(array)
  array.each do |x|
    p x+=10
  end
end

def plus_ten_array (array)
  arry=[]

  array.each do |x|
    x += 10
    arry<< x 
  end
    arry    
end


# Pruebas
print_plus_ten([4,3,7]) 
p plus_ten_array([4,3,7]) == [14, 13, 17]
#________________________________________________________________
def odd_or_even_plus(min,max)
  arry=[]
  (min..max).each do |x|
    if x.odd?
      x+=3
      arry<<x
    elsif x.even?
      x+=2
      arry<<x
    end
  end
  arry
end

# Pruebas
p odd_or_even_plus(3, 9) == [6, 6, 8, 8, 10, 10, 12]
