#Clase CreditCard
class CreditCard
	attr_reader :name, :number, :expiration, :cvc
	attr_accessor :status

	def initialize(name,number,expiration,cvc,status)
		@name = name
		@number = number
		@expiration = expiration
		@cvc = cvc
		@status = status
	end
end 

public 

def cards_format
	card_info = "|#{@name.center(14)}| #{@number.center(15)}| #{@expiration.center(15)}| #{@cvc.center(14)}| #{@status.center(27)}|"
end

#Cinco instancias de CreditCard
customers =[]
	customers[0] = CreditCard.new('Amex','2345673444', '12/15', '2345', '[234, 567, 456, 567, 344]')
	customers[1] = CreditCard.new('ScotiaBank', '2345673744', '12/16', '2845', '[234, 345, 456, 567, 344]')
	customers[2] = CreditCard.new('Bancomer', '2345673444', '12/15', '2645', '[234, 345, 456, 567, 344]')
	customers[3] = CreditCard.new('Serfin', '2345473454', '12/20', '1345', '[234, 345, 456, 567, 344]')
	customers[4] = CreditCard.new('BanCoppel', '2345373464', '12/18', '2445', '[567, 345, 456, 567, 344]')

#Array con cinco objetos de tarjetas de crédito
customers_cards = []
customers.each do |x|
	customers_cards << x.cards_format
	end

#método para mostrar datos de tarjetas
	puts
	puts ' ----------------------------------------------------------------------------------------------'
	puts '|     name     |     number     |    expiration  |      cvc      |           status           |'
	puts ' ----------------------------------------------------------------------------------------------'
	customers_cards.each do |card|
		puts card
	puts ' ----------------------------------------------------------------------------------------------'
	puts
	end


#tests
customers.each do |card|
 	puts "#{card.name} responds to:"
 	puts "\tName: #{card.respond_to?(:name) == true}"
 	puts "\tNumber: #{card.respond_to?(:number) == true}"
 	puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
	puts "\tcvc: #{card.respond_to?(:cvc) == true}"
 	puts "\tGet status: #{card.respond_to?(:status) == true}"
 	puts "\tSet status: #{card.respond_to?(:status=) == true}"
 	puts "\n\n"
 end


