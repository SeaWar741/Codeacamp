p "humberto".upcase == "HUMBERTO"

p "HUMBERTO".downcase == "humberto"

p "Humberto".length == 8

p "Humberto".end_with?("erto")  == true

p "Humberto".start_with?("Hum") == true


a = "Hola Codeacamp"

p a[1,4] == "ola "

a[1,4] = "ello"

p a == "HelloCodeacamp"

p a.capitalize == "Hellocodeacamp"

p a.chr == "H"

b = "Humberto Ceballos"

p (b.count "e").to_i == 2

p a.empty? == false

p a.sub(/[e]/,'3') == "H3lloCodeacamp"

p a.gsub(/[ea]/, 'e' => 3, 'a' => 4) == "H3lloCod34c4mp"

p a.include? "amp" 

p a.index('a') == 9

p a.reverse == "pmacaedoColleH"

p (a.split ('Codea')).to_a == ["Hello", "camp"]

p "  HolaCodeaCamp  ".strip == "HolaCodeaCamp"

