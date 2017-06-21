class Stair
	attr_accessor :material,:size
	#se modifica y lee el material y el size dentro del codigo

	def initialize (material,size)
		@material = material
		@size = size
		#se inicializa tanto el material como el size
	end

	def larger_size_than?(material2)
		size > material2.size
		#se compara el material uno con el size del material 2
	end

	protected
	#zona protegida del codigo, se puede accesar pero no modificar

	def size
		@size
		#el tamaño
	end
end
#test
metal = Stair.new("Metal", 54)
wood = Stair.new("Wood", 23)
p "Well done!" if metal.larger_size_than?(wood)