def baconian_cipher(words)
	   diccionario ={"a"=>"AAAAA","b"=>"AAAAB","c"=>"AAABA","d"=>"AAABB","e"=>"AABAA",
            "f"=>"AABAB","g"=>"AABBA","h"=>"AABBB","i"=>"ABAAA","k"=>"ABAAB",
            "l"=>"ABABA","m"=>"ABABB","n"=>"ABBAA","o"=>"ABBAB","p"=>"ABBBA",
            "q"=>"ABBBB","r"=>"BAAAA","s"=>"BAAAB","t"=>"BAABA","v"=>"BAABB",
            "w"=>"BABAA","x"=>"BABAB","y"=>"BABBA","z"=>"BABBB"}
    array =[]
	x = words.scan(/...../)
	#hace un escaneo de las palabras dentro del array y las separa cada 5 caracteres
	x.each do |y|
		#hace que cada elemento de x se vuelva y haciendo que cada grupo pase a ser la variable y
		z = diccionario.key(y)
		#z es igual a la key del diccionario
		array << z
		#se inserta la key obtenida dentro del array
	end
	array.join("")
	#se unen todos los elementos del array como un string
end            

p baconian_cipher("BAABAAABAAAABAABAAABABBBAAABAABAAAAABBABAAAAAABABAAAAAABAAABAAABAABAAAABBAAAAABAABBAB") == "teesperoalascinco"
p baconian_cipher("ABABAAAAAAAAABAABABAAAAAABAABBAABAAAABAABAAABAAABBABBABBAAABBAABABAAAAAABAABAAAB") == "laclaveesdostres"