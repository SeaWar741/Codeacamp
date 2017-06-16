class Computer
	attr_reader :processor
	#puede leer el tipo de procesador del equipo 
	def initialize
		@processor = "Intel"
	end
end

mac = Computer.new

#test
p mac.processor == "Intel"
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...