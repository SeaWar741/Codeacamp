class Sub
		@@cooking = 0
		@@size = 0
		attr_accessor :bread, :meat, :vegetables, :sauce, :size, :cooking, :input
	def gui
		puts'+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+-'
		puts'					                                                           _'
		puts'					                                                          //'
		puts'					                                                         //'
		puts'					                                         _______________//__'
		puts'					                                       .(______________//___).'
		puts'					                                       |              /      |'
		puts'					                                       |. . . . . . . / . . .|'
		puts'					                                       \ . . . . . ./. . . . /'
		puts'					                                        |           / ___   |'
		puts'					                    _.---._             |::......./../...\.:|'
		puts'					                _.-~       ~-._         |::::/::\::/:\::::::|'
		puts'					            _.-~               ~-._     |::::\::/::::::X:/::|'
		puts'					        _.-~                       ~---.;:::::::/::\::/:::::|'
		puts'					    _.-~                                 ~\::::::n::::::::::|'
		puts'					 .-~                                    _.;::/::::a::::::::/'
		puts'					 :-._                               _.-~ ./::::::::d:::::::|'
		puts'					 `-._~-._                   _..__.-~ _.-~|::/::::::::::::::|'
		puts'					  /  ~-._~-._              / .__..--~----.YWWWWWWWWWWWWWWWP'''
		puts'					 \_____(_;-._\.        _.-~_/       ~).. . \''
		puts'					    /(_____  \`--...--~_.-~______..-+_______)'
		puts'					  .(_________/`--...--~/    _/           /\''
		puts'					 /-._     \_     (___./_..-~__.....__..-~./'
		puts'					 `-._~-._   ~\--------~  .-~_..__.-~ _.-~'
		puts"					     ~-._~-._ ~---------'  / .__..--~"
		puts"					         ~-._\.        _.-~_/'"
		puts"					             \`--...--~_.-~"""
		puts"					              `--...--~"
		puts
		puts'				     				Bienvenido a Subway!'
	end
	def begining
		promt =">"
		puts'+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+-'
		puts
		puts	'Seleccionar el tipo de pan de la siguiente lista'
		puts	'[integral, Avena, Blanco, Oregano, Queso Parmesano, Cereal y Trigo, Ajo Rostizado]'
		print promt
		self.bread = gets.chomp
		puts
		puts	'Seleccionar el tipo de carne de la siguiente lista'
		puts	'[carne de res, pollo and bacon, costillas, roast beef, albondigas, jamon, atun]'
		print promt
		self.meat = gets.chomp
		puts
		puts	'Seleccionar la combinacion de vegetales de la siguiente lista'
		puts	'[(lechuga,jitomate,pepino,cebolla),(lechuga,jitomate,pimientos,cebolla),'
		puts	'(lechuga,jitomate,pepino,pimietos,cebolla),(lechuga,jitomate,pepino,pimietos,cebolla),(sin vegetales)]'
		print promt
		self.vegetables = gets.chomp
		puts
		puts	'Seleccionar el tipo de salsa de la siguiente lista'
		puts	'[mayonesa,ranch,bbq,italiana,mostaza]'
		print promt
		self.sauce = gets.chomp
		puts
		puts	'Establecer el tamaño del sub (cm)'
		print promt
		self.size = gets.chomp
		puts
		puts	'Establecer el tiempo de cocción (minutos)'
		print promt
		self.cooking = gets.chomp
		puts
	end

	def type
		if @bread == "integral" && @meat == "carne de res" && @vegetables == "lechuga,jitomate,pepino,cebolla" && @sauce == "mayonesa"
			"Carne y Queso"
		elsif @bread == "blanco" && @meat == "pollo and bacon" && @vegetables == "lechuga,jitomate,pimientos,cebolla" && @sauce == "ranch"
			"Chiken & Bacon Ranch"
		elsif @bread == "cereal y trigo" && @meat == "costillas" && @vegetables == "lechuga,jitomate,pepino,pimietos,cebolla" && @sauce == "bbq"
			"Costillas BBQ con Queso"
		elsif @bread == "avena" && @meat == "roast beef" && @vegetables == "lechuga,jitomate,pepino,pimietos,cebolla" && @sauce == "mayonesa"
			"Roast Beef"
		elsif @bread == "queso Parmesano" && @meat == "albondigas" && @vegetables == "sin vegetales" && @sauce == "italiana"
			"Albondigas"
		else
			"Personalizado de pan #{@bread}, de #{@meat}, #{@vegetables} y salsa #{@sauce}"
		end
	end

	def size
		if @size.to_i >= 40 || @size.to_i < 61
		"Jumbo"
		elsif @size.to_i > 30 || @size.to_i < 40
		"Big"
		elsif @size.to_i < 30 || @size.to_i > 20
		"Medium"
		elsif @size.to_i <=20
		"Small"
		else
		"Not a valid size"
		end
	end

	def sub_info
		self
		classification = type
		@@ovenator = cooking
		"Informacion de la orden:Sub tipo #{classification} Tamaño: #{size}. que será cocinado por #{cooking} minutos"
	end
end

class Oven < Sub
	def initialize
		@correct_time = rand(1..10) 
	end

	def time
		string = ""
		cook = @@ovenator
		if cook.to_i == @correct_time
			string<<'Correct> The sub is ready to be delivered'
		elsif cook.to_i < @correct_time
			string<<'Warning> The sub isnt well cooked, it needs more time!'
		elsif cook.to_i > @correct_time
			string<<'Warning> The sub has overcooked'
		end
		reinsert(string)
	end

	def reinsert(string)
		promt =">"
		if string  =='Correct> The sub is ready to be delivered'
			print ""
		elsif string == 'Warning> The sub isnt well cooked, it needs more time!'
			puts'Warning> Do you want to reinsert the sub into the oven?'
			puts'Warning> Write (Y/N)'
			print promt
			self.input = gets.chomp
			if input.downcase == "y"
				add_time
			elsif input.downcase == "n"
				print ""
			end

		elsif string == 'Warning> The sub has overcooked'
			print
		end
		'The program has finished'
	end

	def add_time
		self
		time = @cooking.to_i
		puts 'Cooking in the oven' 
		while time != @correct_time
			time += 1
			sleep (1)
			print '.'
		end
		puts
		time
	end
	
end



class Program
	@@line = '+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+-'
	attr_accessor :subway
	def initialize
		@subway = Sub.new
		@oven = Oven.new
	end

	def run!
	  @subway.gui
	  @subway.begining
	puts @@line
	puts
	puts @subway.sub_info
	puts
	puts @@line
	puts
	puts @oven.time
	end
end

yeah = Program.new
yeah.run!

