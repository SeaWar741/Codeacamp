class Person
  attr_accessor :first_name, :last_name, :email
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def name
  	p @first_name<< " " << @last_name
    #se juntan el first y lastname separados por un espacio
  end

  def information
  	p "Name:"<<" "<<@first_name<< " " <<@last_name
    #se juntan el first y lastname con "Name" separados por un espacio
  	p "Email:"<<" "<<@email
    #se juntan el mail y "email" separados por un espacio
  end
end



Person#name, que regresa el nombre completo de una persona.
Person#information, que regresa toda la información de la persona.

person = Person.new('Daniel', 'Garcia', 'daniel@mail.com')
person.name
# => Daniel Garcia
person.information
# => Name: Daniel Garcia
# => Email: daniel@mail.com