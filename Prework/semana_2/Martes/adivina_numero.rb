 class NumberGuessingGame
    #clase NumberGuessingGame
    def initialize
        #metodo que inicia
        @number= rand(0..9)
        #number es igual a un numero random entre 0 y 9
    end

    def guess(numer)
            #metodo guess que dice que hay una condicion dada por el usuario, si no se da entonces se pide que el usuario la escriba manualmente
            if numer<@number
                #si el numero es mas pequeño que el numero entonces "Too low"
                "Too low"
            elsif numer>@number 
                #si el numero es mayor a el numero entonces "too high"
                "Too high"
            elsif numer == @number
                #si el numero es igual al numero random que pone la computadora entonces "you got it!"
                "you got it!"
        end
    end
end


game = NumberGuessingGame.new

# Pruebas
a = ""

p "Welcome to Guess the Number"
p "Human VS Machine"
while a != "Stop"
    x = ""
    while x != "you got it!" 
        p"Write a number between 0 and 9"
        y = gets.chomp.to_i
       p x = game.guess(y)
    end
    p "WOOOOW!! Very Impresive. Want to defeat the machine again? If not write stop"
    game
    a = gets.chomp
    end
#p game.guess(5) #== "Too low"

#p game.guess(8) #== "Too high"

#p game.guess(7) #== "Too high"

#p game.guess(6) #== "You got it!"

#p game.guess

#Las pruebas no pueden dar verdadero ya que el numero va a cambiar siempre 
