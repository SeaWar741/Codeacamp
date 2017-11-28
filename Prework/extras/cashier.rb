# 1.	Preguntar el número de cuenta
# 2.	Preguntar la contraseña
# 3.	Preguntar qué tipo de acción desea realizar
# a.	Sacar dinero
# i.	Insertar la cantidad deseada a sacar
# ii.	Preguntar si se desea donar dinero a la fundación (4)
# iii.	Confirmar la operación
# iv.	Restar la cantidad al cajero
# v.	Restar la cantidad al estado de cuenta
# vi.	Dar el dinero
# b.	Meter dinero a la cuenta
# i.	Insertar la cantidad a depositar
# ii.	Insertar el billete
# iii.	Preguntar si se desea donar dinero a la fundación (4)
# iv.	Confirmar la operación
# v.	Sumar la cantidad al cajero
# vi.	Sumar la cantidad al estado de cuenta 
# c.	Transferir dinero
# i.	Insertar la cantidad de dinero a transferir
# ii.	Preguntar si se desea transferir dinero en efectivo o de la cuenta
# 1.	Ingresar la cuenta a la que se le transferirá el dinero
# 2.	Preguntar si se desea donar dinero a la fundación (4)
# d.	Consultar el estado de cuenta
# i.	Imprimir el estado de cuenta
# 4.	Preguntar si se desea donar dinero a la fundación (4)
# 5.	Preguntar si desean realizar alguna otra acción
# 6.	Cerrar sesión 


class Cashier
	@@B500 = 100
	@@B200 = 200
	@@B100 = 300
	@@B59 = 200
	@@B20 = 250
	@@C10 = 500
	@@C5 = 500
	@@C2 = 1000
	@@C1 = 2000
	@@TOTALCMONEY = 100000
	@@BALANCE = 250000
	@@try = "Try again"
	@@TRANSB = 0
	@@Client = ""
	@@Password = ""
	@@FUNDATIONM = 0

	attr_accessor :IDCLIENT, :IDPASSWORD, :BALANCERETRIEVE, :BALANCEDEPOSIT, :BALANCETRANSFER, :TOTALMONEY, :FIRST, :SECOND, :FUNDATION, :IDTRANS
	@TOTALMONEY = 0

	def questions#Preguntar numero de cuenta y contraseña/NIP
		promt = ">"
		puts "Welcome to LJD Bank"
		puts "Insert Bank account"
		puts
		print promt
		self.IDCLIENT = gets.chomp
		puts
		if @IDCLIENT.length == 16
			puts "Insert NIP"
			print promt
			self.IDPASSWORD = gets.chomp
			puts
			if @IDPASSWORD.length == 10
			 	puts "Welcome to your account user #{@IDCLIENT}"
			else
			 	puts @try
			end
		else
			puts @@try
		end
		@@Client = @IDCLIENT
		@@Password = @IDPASSWORD
	end
end
	def options#Preguntar que tipo de acción desea relizar
		promt = ">"
		puts "Option menu:"
		puts "0. Get cash"
		puts "1. Deposit"
		puts "2. Transfer"
		puts "3. Balance check"
		puts 
		print promt
		self.FIRST = gets.chomp
		case @FIRST.to_i
			when 0
				puts "Please insert the amount of money you want to retrieve"
				puts
				print "> $"
				self.BALANCERETRIEVE = gets.chomp
			when 1
				puts "Please insert the amout of money to deposit"
				puts
				print "> $"
				self.BALANCETRANSFER = gets.chomp
			when 2
				puts "Insert the account number to make the transfer"
				puts
				print ">"
				self.IDTRANS = gets.chomp				
			when 3
				puts "Checking your account Balance"
				puts "Please wait"
				wait = 0
				while wait != 15
					wait += 1
					sleep (1)
					print '.'
				end
			puts
			puts "Your current balance is $ #{@@BALANCE}"
			end
	end

	def extract_money#Sacar dinero de la cuenta
		#añadir forma para registrar de donde esta sacando los billetes

		@@TOTALCMONEY -= @BALANCERETRIEVE.to_i
		@@BALANCE -= @BALANCERETRIEVE.to_i
	end

	def deposit#Meter dinero a la cuenta
		depo = @BALANCETRANSFER.to_i
		@@TOTALCMONEY += depo
		@@BALANCE += depo
	end

	def fundation #Dinero a la fundacion
		puts "Would you like to donate to LJD Bank? (y/n)"
		puts
		print ">"
		str = gets.chomp
		if str == "y"
			puts
			puts "Insert the amount to donate" #aqui estas en java
			puts
			print "> $"
			self.FUNDATION = gets.chomp
			@@FUNDATIONM += @FUNDATION.to_i
			@@BALANCE -=@FUNDATION.to_i
			puts "Thank you for donating!"
		elsif str == "n"
			puts 
			
		end
			puts "We'll continue with the operation"
			puts
			sleep (1.5)
			puts "Done"
	end

	def transfer
		if @IDTRANS.length == 16
			puts
			puts "Insert the amount to transfer"
			puts
			print "> $"
			self.BALANCETRANSFER = gets.chomp
			@@TRANSB += @BALANCETRANSFER.to_i
			@@BALANCE -= @BALANCETRANSFER.to_i
			puts @BALANCE	
		else
			puts "Not a valid account"
		end	
	end

	def close
		puts "Thank you for choosing our Bank"
		puts
		puts "Farewell user #{@IDCLIENT}"
	end

end

class Program < Cashier
	attr_accessor :Cash
	# attr_reader :IDCLIENT, :IDPASSWORD, :FIRST

	def initialize
		@cash = Cashier.new
	end

	def run!
		x = 0
		@cash.questions #Done
		#puts "#{@@Client}"
		puts
		while x.to_i == 0 #Done
			if @@Client.length == 16 && @@Password.length == 4
				puts
				@cash.options
				case @FIRST.to_i
		 			when 0
		 				puts
		 				@cash.fundation
		 				@cash.extract_money
		 			when 1
		 				puts
		 				@cash.fundation
		 				@cash.deposit
		 			when 2
		 				puts
		 				@cash.fundation
		 				@cash.transfer
		 			when 3
		 				puts
		 				@cash.balance
		 			end
		 	else
		 		puts "Error"
		 		puts 
		 	end
		 	puts
		 	puts "Would You like to perform another task?" 
		 	puts
		 	puts "Enter 0 to continue or 1 to close the session"
		 	puts
		 	print ">"
		 	x = gets.chomp
		end
		@cash.close
	end

end

yeah = Program.new
yeah.run!