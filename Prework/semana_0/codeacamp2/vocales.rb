#metodo para cambiar vocales por x
def replace_vowels (array)
  arry=[]
  array.each do |x|
  #variable x es igual a ordernar los valores dentro del array por palabra
    y= x.gsub(/[aeiou]/, 'x') 
    arry<<y
  #variable y es igual a cambiar todas las letras dentro del array [a,e,i,o,u] por una x
  end
  arry
end


p replace_vowels(["banana", "apple"]) == ["bxnxnx", "xpplx"]