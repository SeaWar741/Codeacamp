 def caesar_cipher(original_text, rotate_number)
  original_alphabet = "abcdefghijklmnopqrstuvwxyz"
  cipher_text = ""
  original_text.split("").each do |letter|
    if "?.,! ".include?(letter)
      cipher_text << letter
    else
      cipher_alphabet = original_alphabet[(original_alphabet.index(letter.downcase) + rotate_number) % original_alphabet.size]
      if letter == letter.upcase
        cipher_text << cipher_alphabet.upcase
      else
        cipher_text << cipher_alphabet
      end
    end
  end
  cipher_text
end

#test
p caesar_cipher("hola como estas",13) == "ubyn pbzb rfgnf"
p caesar_cipher("Es un metodo de encriptado",12) == "Qe gz yqfapa pq qzodubfmpa" 