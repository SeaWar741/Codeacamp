require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
end

chef = Chef.find(1)

# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef = Chef.create(first_name: "Pepe", last_name:"Lopez",email:"elpepelopezaurio@yourmail.com", phone:"930-201-5207 x8997", birthday:Time.now)
assert chef = Chef.find(21)
assert chef[:first_name] == 'Pepe'
assert chef[:last_name] == 'Lopez'

assert meal = Meal.create(name: "Chicharron a la diabla", chef_id: 21)
assert meal = Meal.find(91)
assert meal[:name] == 'Chicharron a la diabla'
assert meal[:chef_id] == 21

puts "finished"
