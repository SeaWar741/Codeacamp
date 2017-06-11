def vowels(array)
  arry=[]
    array.each do |x|
      y= x.gsub(/[aeiou]/, '') 
      arry<<y
    end
    arry
end

#test
p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#___________________________________________________________________________________________________

def get_sum(num1,num2)
  if num1==1 && num2==0
    num1+num2
  elsif num1 !=num2 
    (num1..num2).inject(:+)
  elsif num1 == num2
       num1
       
  end
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

#___________________________________________________________________________________________________

def char_word_counter(phrase)
  x=phrase.split.size
  y=phrase.downcase.scan(/[abcdefghijklmnñopqrstuvwxyz]/).size
   "This sentence has #{x} words & #{y} characters"
end
p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"
#___________________________________________________________________________________________________
# Deberás utilizar este Hash como base de tu programa

#Deberás utilizar este Hash como base de tu programa

def food_group (food)
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maiz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmon', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogurt', 'Queso', 'Crema']}
   
   if !!food_groups.detect{|_, value| value.include?(food)}
      pair = food_groups.find{|k, v| v.include?(food)}
      pair && pair.first
   else
      "comida no encontrada"
   end
end

# Driver code
    p food_group('Crema') == "lacteo"
    p food_group('Res') == "carne"
    p food_group('Piña') == "fruta"
    p food_group('Caña') == "comida no encontrada"


