class Number
x = 0
F = 1

	def factorial
		x = gets.chomp
		while x.to_i > 1
			F *= x.to_i
			puts F
			puts
			X.to_i -= 1
			
			puts X
		end
		puts "el factorial del numero solicitado es #{F}"
	end
	
end

yeah = Number.new
yeah.factorial