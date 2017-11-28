total = 0
option = 0
x = 0
puts "inicio"
x = gets.chomp
while x !=0
	x = gets.chomp
	puts "hola"
	option = gets.chomp
	case option.to_i
	when 1
		total += 18.05
	when 2
		total += 22.00
	when 3
		total += 19.5
	end
end
print total
