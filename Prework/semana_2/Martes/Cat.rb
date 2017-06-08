class Cat
  def initialize(name)
    @name = name
    #variable para nombre
  end

  def initialize
      @@distance=0
  end
    #comportamiento 1
    def self.meow
       "Miau... Miau..."
    end

    #comportamiento 2
    def run(num)
       '"Corriendo #{num} mts..."'
    end
    #comportamiento 3
    def jump
       "Saltando..."
    
  end
end

#test

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
