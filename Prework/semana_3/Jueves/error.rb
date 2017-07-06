# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
	string.reverse.swapcase.gsub(/[aeio]/,"*")
    # word_reverse = string.reverse
    # swapped_word = word_reverse.swapcase
    # encrypted_word = swapped_word.gsub(/[aeio]/,"*")

    # return encrypted_word
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(str)
	#sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
	arry = str.split
	arry.words_longer_than.letter_per_word.numbers_larger_than
end

public
def words_longer_than
	select{|word| word.length > 3}
end

def letter_per_word
	map{ |w| w.count("e") }
end

def numbers_larger_than
	max
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
