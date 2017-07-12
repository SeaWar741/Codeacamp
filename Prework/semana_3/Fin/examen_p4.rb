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