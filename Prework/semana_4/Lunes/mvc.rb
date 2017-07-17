require 'csv'

class Csv_data
#-------------------
def initialize(command=gets.chomp)
	@command = command
	
end

def orders
	if @command == "index"
		read_data
	elsif @command == "add"
		insert_data
	elsif @command == "delete"
		delete
	elsif @command == "complete"
		complete
	end
	
end

def read_data
	i = 1
	CSV.foreach("tareas.csv") do |row|
	puts "#{i}. #{row[0]}"
	i += 1
	end
end

def insert_data(new_data)
	CSV.open("tareas.csv") do |csv|
		csv << [new_data]
	end
	puts "Agregaste la tarea: ""#{new_data}"" a tu lista."
end

def delete(item)
  @list.delete_if{|name| name.item == item}
  puts "Eliminaste la tarea: ""#{item}"" de tu lista."
end

def complete(task)

end

#------------------
end

puts
puts '			Welcome to To-do list Ruby app!'
puts
puts '---------------------------------------------------------------------'
puts 
puts 'Commands: index --> to display the tasks'
puts '	  add[new task] --> to add a task to the list'
puts '	  delete[task] --> to eliminate a task from the list'
puts '	  complete --> to finish the program'

task = Csv_data.new

#task.orders
task.read_data
task.insert_data("hola")
