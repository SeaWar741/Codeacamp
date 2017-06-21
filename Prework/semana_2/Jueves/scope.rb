$global_var = "This is a global variable"
CONSTANT = 3.1416 

class DumyClass	
	@@class_variable = "This is a class variable"
	
	def initialize
		@local_var = "this is my local var"
		
	end
def return_my_local_var
 	@local_var
end
 #las variables locales no pueden ser llamadas fuera del metodo
 #la variable de instancia dentro de todos los metodos de la clase mientras que la local solo pertenece a ese mismo metodo

 # Este es un getter
  def instance_var
    @instance_var
  end

# Este es un setter
  def instance_var=(value)
    @instance_var = value
  end

  def class_variable
  	@@class_variable
  end

  def class_variable=(value)
  	@@class_variable = value
  end
  	
  def global_var
	$global_var
	end

	def global_var=(value)
		$global_var =value
	end

	def constant_var
		CONSTANT
	end

end

dummy1 = DumyClass.new

dummy2 = DumyClass.new

p dummy1.class_variable
p dummy2.class_variable 
dummy1.class_variable = "New value for the class variable"
p dummy1.global_var
dummy2.global_var = "H1"
p dummy2.global_var
p dummy1.global_var


  	
  def global_var
	$global_var	
	end

	def global_var=(value)
		$global_var =value

	end

	def constant_var
		CONSTANT
	end



puts
p $global_var = "4"
$global_var = "h3"
p global_var
p dummy2.global_var
p dummy1.global_var = "h4"
p dummy1.global_var
p global_var
puts
p $global_var
p global_var = "y"
p global_var
p global_var 
puts
p $global_var
p dummy1.global_var

#al cambiar el valor de la clase todas las instancias se ven modificadas

#llamamos a la clase y se modifico segun las ordenes dadas

#modificarla dentro de una clase

# def constant_var=(value)
# 	CONSTANT =value
# end

#la constante ya esta definida al inicio del codigo es por ello que al tratar de modificarla nos da error, el valor debe de permanecer igual siempre


#si modificas la variable global entonces todo se ve modificado