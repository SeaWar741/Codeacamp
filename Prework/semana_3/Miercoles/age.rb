require 'date'
class Person
	def initialize(date,names)
		@date = date
		@names = names
	end

def age
	years_old
end

private
def years_old
	  current_year = Time.new.year
  	  age = current_year -= @date
  	  "#{@names} is #{age} years old."
end
end

carlos = Person.new(1987,"Carlos")
martha = Person.new(1991,"Martha")
#test
p carlos.age == "Carlos is 30 years old."
#=>true
p martha.age == "Martha is 26 years old."
#=>true

p carlos.years_old
#=>private method `years_old'...(NoMethodError)
#esto occurre por que el metodo no puede ser llamado por si solo, tiene que ser llamado dentro de la clase por otro
