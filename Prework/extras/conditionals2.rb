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
		if x > x
			puts "Correcto"
		else
			puts "Falso"			
		end
	end
	[]


end



yeah = Homework.new

yeah.conditional
