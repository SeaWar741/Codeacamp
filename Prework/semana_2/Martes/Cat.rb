class Cat
  def initialize(name)
    @name = name
    #se crea variable que es igual a el name
    @distance = 0
    #variable para la distancia que es igual a 0
  end
    #comportamiento 1
    def self.meow
    	#metodo para meow que realiza el sonido
       "Miau... Miau..."
    end

    #comportamiento 2
    def run (mts=0) 
    	#metodo para run que espera un argumento, si no hay entonces es igual a 0
    	metros = @distance += mts.to_i
    	#variable metros es igual a la distancia mas los metros convertidos a i.
    	"Corriendo #{metros} mts..."
    	#imprime el texto diciendo los metros coridos
    end
    #comportamiento 3
    def jump
    	#metodo para jump que imprime el string saltando
       "Saltando..."

  end
end

#test
#se crean basados en la clase con distintos names
cat_3 = Cat.new("catty")
cat_1 = Cat.new("caty")
cat_5 = Cat.new("pepe")

p cat_1.jump == "Saltando..."
p cat_5.jump == "Saltando..."
p Cat.meow == "Miau... Miau..."
p cat_3.run == "Corriendo 0 mts..."
p cat_3.run(20) == "Corriendo 20 mts..."
p cat_3.run(10) == "Corriendo 30 mts..."
p cat_3.run(10) == "Corriendo 40 mts..."
