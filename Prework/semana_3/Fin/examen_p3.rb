#RaceCar class
class RaceCar
Distance=100
  attr_accessor :name,:laps
  def initialize(name,laps)
    @name = name
    @laps = laps  
  end
  #método para obtener velocidad promedio
  def average_speed
    arry = []
    total_distance = 5
    @laps.each do |x|
      arry <<(Distance/x.to_i).round(2)
    end
    arry
    arry.inject(0){|sum,x| sum + x } / total_distance
  end


  #método que muestra nivel de cada race car
  def level
  	if average_speed (1..10)
      "Advanced"
    elsif average_speed (11..15)
      "Medium"
    elsif average_speed (16..20) 
      "Normal"
    elsif average_speed >=21
      "Beginner"
    end
  end

end

#Team class
class Team 
  def initialize(array)
    @array = array
    
  end
public
  def info
    arry = []
    @array.each do |x|
      arry << x.name
    end
    arry
  end

  def info_2
    arry = []
    @array.each do |x|
      arry << x.average_speed
    end
    arry
  end
  #método para agregar nuevo race car
  def new_car
  	RaceCar.new
  end

  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
    arry = []
     @array.each do |x|
      arry << x.average_speed
     end
     arry.inject(0){|sum,x| sum + x } / 5
  end

end

public
#método para buscar race car
def search(name,team)
  if team.info.include?(name) == true
    "#{name} is a racer"
  end
end

#método para generar la tabla
def table(team)
puts '|    Name         |    Nivel        |'
puts '------------------------------------'
name_level(team)
end

#método para mostrar nombre y nivel del race car
def name_level(team)
  info = [team.info,team.info_2]
  i = 0
  while i != 5
  puts "|#{info[0][i].center(16) } |      #{info[1][i]}        |"
  i += 1
  end
end


#instancias de RaceCar
car1 = RaceCar.new("Power", [10,20,5,20,15])
car2 = RaceCar.new("Rover", [10,5,20,10,25])
car3 = RaceCar.new("Ferry", [11,6,22,10,30])
car4 = RaceCar.new("Mary", [20,30,20,10,20])
car5 = RaceCar.new("Lightning", [10,4,5,6,8])
car6 = RaceCar.new("Loner", [5,7,10,20,19])


#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 

 table(team_one)