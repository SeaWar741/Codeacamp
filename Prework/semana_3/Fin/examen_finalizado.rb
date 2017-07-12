#_____________________________________________________________Parte 1_____________________________________________________________
#Clase CreditCard
class CreditCard
	attr_reader :name, :number, :expiration, :cvc
	attr_accessor :status

	def initialize(name,number,expiration,cvc,status)
		@name = name
		@number = number
		@expiration = expiration
		@cvc = cvc
		@status = status
	end
end 

public 

def cards_format
	card_info = "|#{@name.center(14)}| #{@number.center(15)}| #{@expiration.center(15)}| #{@cvc.center(14)}| #{@status.center(27)}|"
end

#Cinco instancias de CreditCard
customers =[]
	customers[0] = CreditCard.new('Amex','2345673444', '12/15', '2345', '[234, 567, 456, 567, 344]')
	customers[1] = CreditCard.new('ScotiaBank', '2345673744', '12/16', '2845', '[234, 345, 456, 567, 344]')
	customers[2] = CreditCard.new('Bancomer', '2345673444', '12/15', '2645', '[234, 345, 456, 567, 344]')
	customers[3] = CreditCard.new('Serfin', '2345473454', '12/20', '1345', '[234, 345, 456, 567, 344]')
	customers[4] = CreditCard.new('BanCoppel', '2345373464', '12/18', '2445', '[567, 345, 456, 567, 344]')

#Array con cinco objetos de tarjetas de crédito
customers_cards = []
customers.each do |x|
	customers_cards << x.cards_format
	end

#método para mostrar datos de tarjetas
	puts
	puts ' ----------------------------------------------------------------------------------------------'
	puts '|     name     |     number     |    expiration  |      cvc      |           status           |'
	puts ' ----------------------------------------------------------------------------------------------'
	customers_cards.each do |card|
		puts card
	puts ' ----------------------------------------------------------------------------------------------'
	puts
	end


#tests
customers.each do |card|
 	puts "#{card.name} responds to:"
 	puts "\tName: #{card.respond_to?(:name) == true}"
 	puts "\tNumber: #{card.respond_to?(:number) == true}"
 	puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
	puts "\tcvc: #{card.respond_to?(:cvc) == true}"
 	puts "\tGet status: #{card.respond_to?(:status) == true}"
 	puts "\tSet status: #{card.respond_to?(:status=) == true}"
 	puts "\n\n"
 end


#_____________________________________________________________Parte 2_____________________________________________________________

#Athlete class
class Athlete
    attr_accessor :total_distance, :total_time

  def initialize(total_distance=0,total_time=0)
    @total_distance = total_distance
    @total_time = total_time
  end

  #método para validar tiempo
  def speed_record
    @total_time
  end

  #método para hacer ejercicio
  def new_workout(distance,total_time)
    @total_distance = distance
    @total_time = total_time
  end

  #método para obtener velocidad del atleta
  def speed
    if @total_distance !=0 && @total_time != 0
     (@total_distance.to_f / @total_time.to_f).round(2)
    else
     0
    end
  end

end

#Runner class
class Runner < Athlete
def run
  #if speed =! 0v 
  "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
# else
#   "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{0} m/s"
# end
end

end
#Swimmer class
class Swimmer < Athlete
  def swim
    "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{speed} m/s"
  end
end

#Cyclist class
class Cyclist < Athlete
  def ride_bike
    true
  end
end

#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)

athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end

#test for runner

#test para runner con distancia = 0
p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0 m/s"
#test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
runner.new_workout(20, 7) 
#test para runner con distancia = 20 metros y tiempo = 7 segundos
p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

#test para swimmer con distancia = 50
p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"

#_____________________________________________________________Parte 3_____________________________________________________________

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

#_____________________________________________________________Parte 4_____________________________________________________________

class Playlist
  attr_accessor :songs
  def initialize (name,songs)
    @name = name
    @songs = songs
  end

  def display_name
    @name
  end

  def number_of_songs
    "There are #{@songs.count} songs in the #{display_name}"
  end

  def add_song(song)
    @songs << song
    @songs
  end

  def next_song
    max =@songs.length
    i = 0
    finish = ""
    puts "Write Play to start the playlist (#{@name})"
    puts
    promt =">"
    print promt
    while finish.downcase != "play"
      finish = gets.chomp
      i = 0
      puts
    while i <max
      p "Playing song: #{@songs[i]}"
      p "skip song? (Y/N) or exit to end the playlist"
      print promt
      user_input = gets.chomp
      if user_input.downcase == "y" && i != 8
        i += 1
      elsif user_input.downcase == "n" && i != 8
        puts "Playing song"
        sleep(1)
        print'.'
        sleep(1)
        print'.'
        sleep(1)
        sleep(1)
        print'.'
        sleep(1)
        print'.'
        sleep(1)
        sleep(1)
        print'.'
        sleep(1)
        print'.'
        sleep(1)
        print'.'
        puts
        puts
        i+=1
      elsif user_input.downcase == "exit"
        exit!
      end
    end
    puts
    p "Restarting playlist"
    puts
    puts "Write Play to start the playlist (#{@name})"
    puts
  end 
end
end

playlist = Playlist.new("The Ultimate Playlist",["In My Life","Naive","She Moves In Her Own Way","Skinny Love","All My Life","All The Small Things","Real"])

p playlist.display_name
p playlist.number_of_songs
p playlist.add_song("California(Here We Come)")
puts
p playlist.next_song