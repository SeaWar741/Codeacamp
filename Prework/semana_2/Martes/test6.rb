 class NumberGuessingGame
    #clase NumberGuessingGame
    def initialize
        #metodo que inicia
        @number= rand(0..9)
        #number es igual a un numero random entre 0 y 9
    end


def interactive
    p"Welcome to the guessing game!"
    p"Pick any number between 0 and 9:"
    guess = gets.chomp.to_i
while guess != @number 
        if guess< @number
                #si el numero es mas pequeño que el numero entonces "Too low"
                p "Too low"
        elsif guess > @number 
                #guess es mayor a el numero entonces "too high"
                p "Too high"
        elsif guess == @number
                #si el numero es igual al numero random que pone la computadora entonces "you got it!"
                p "you got it!"
        end
end
end



game = NumberGuessingGame.new

p game.interactive
