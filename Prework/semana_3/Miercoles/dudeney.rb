def dudeney_number?(n)
  digit_sum = n.to_s.chars.map(&:to_i).inject(:+)
  #toma el numero, lo pasa a string. lo mapea y va pasando a integral para que se sumen estos.
  n == digit_sum ** 3
  #si el numero dado es igual a la suma de sus digitos da como resultado la raiz cubica entonces es true
end

p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1_728) == false
p dudeney_number?(5_832) == true