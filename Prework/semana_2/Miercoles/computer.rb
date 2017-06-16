class Computer
	def initialize
		@mac=mac

	color ="platinum"
end
		
	def say
		if color == newcolor 
			print color
		else
			print newcolor
		end
	end

	def change(color="platinum")
		newcolor =gets.chomp

	end

end

mac = Computer.new
#test
mac.color = "Platinum"
p mac.color
