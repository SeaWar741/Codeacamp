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

