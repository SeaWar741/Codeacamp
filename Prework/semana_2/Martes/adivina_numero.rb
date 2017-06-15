 class NumberGuessingGame
    #clase NumberGuessingGame
    def initialize
        #metodo que inicia
        @number= rand(0..9)
        #number es igual a un numero random entre 0 y 9
    end

    def guess(numer=gets.chomp.to_f)
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
def guessing
a = ""
p "______________________________"
p "Welcome to Guess the Number"
p "Human VS Machine"

loop do       
        @number= rand(0..9)
        p "Write a number between 0 and 9"
        numer = -1
        while numer != @number
            #mientras que el numero sea diferente de el numero random
            numer = gets.chomp.to_i   
            #numer = obtener la entada del usuario         
            if numer<@number               
                p "Too low"
            elsif numer>@number                 
                p "Too high"
            elsif numer == @number                
                p "You got it!"
                puts "WOOOOW!! Very Impresive. Want to defeat the machine again? If not write stop otherwise press any key."
                break
                #Cuando la condicion se cumple (numero del usuario= numero random) entonces el loop se rompe y reinicia el numero random
            end
        end
        answer = gets.chomp # The Critical Line to break out of the Loop is here:
        break if answer.downcase == "stop"
        #romper el loop si es igual a stop ya sea en mayusculas o no
    end
end

p game.guess(5) #== "Too low"

p game.guess(8) #== "Too high"

p game.guess(7) #== "Too high"

p game.guess(6) #== "You got it!"

p game.guess

guessing

#Las pruebas no pueden dar verdadero ya que el numero va a cambiar siempre 
