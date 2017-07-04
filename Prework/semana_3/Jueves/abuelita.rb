def deaf_grandma
	count = 0
	while count < 3
		user_input = gets.chomp
		if user_input == user_input.downcase
			puts 'HUH?! NO TE ESCUCHO, HIJO!'
		elsif user_input == user_input.upcase && user_input != "BYE TQM"
			puts 'NO, NO DESDE 1983'
		else
			count = count +1
		end
	end
	puts 'ADIOS HIJO MIO!'
end

deaf_grandma