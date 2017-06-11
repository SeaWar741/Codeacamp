class People
  def initialize(name)
  	#es igual a el name que se le pone a objeto
    @name=name
  end

  def speak
    "#{@name} is talking to you..."
    #se ímprime en el metodo el nombre del objeto basado en la clase people
  end
end

#test
people_1= People.new("Rodrigo")
people_2= People.new("Carlos")
people_3= People.new("Rodrigo")

p people_1.speak == "Rodrigo is talking to you..."
p people_2.speak == "Carlos is talking to you..."
p people_3.speak == "Rodrigo is talking to you..."
