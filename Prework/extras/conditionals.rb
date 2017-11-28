class Homework
	attr_accessor :x,:y

	def conditional
		puts "Bienvenido al comparador"
		puts
		puts "Ingresa x"
		print ">"
		self.x = gets.chomp
		puts
		puts "Ingresa y"
		print ">"
		self.y = gets.chomp
		puts

		arry = [@x,@y]
		if arry[0].to_i > 85 && arry[1].to_i > 80
			puts "Correcto"
			puts arry[0].to_i
		else
			puts "Falso"			
		end
	end
	[]


end



yeah = Homework.new

yeah.conditional
