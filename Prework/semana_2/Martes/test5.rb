 class NumberGuessingGame
    #clase NumberGuessingGame
    def initialize
        #metodo que inicia
        @number= rand(0..9)
        #number es igual a un numero random entre 0 y 9
    end


def user
    p"ADIVINA EL NUMERO!"
    p"Escribe un numero entre 0 y 9"
    p"Si quieres salir Escribe Stop"

# array=[]

  number = gets.chomp

while number != "Stop"
  number = gets.chomp
            if number.to_f< @number
                    #si el numero es mas pequeño que el numero entonces "Too low"
                    p "Too low"
            elsif number.to_f > @number 
                    #si el numero es mayor a el numero entonces "too high"
                    p "Too high"
            elsif number.to_f == @number
                    #si el numero es igual al numero random que pone la computadora entonces "you got it!"
                    p "you got it!"
            end
end
end
p "gracias"
end

game = NumberGuessingGame.new

p game.user

