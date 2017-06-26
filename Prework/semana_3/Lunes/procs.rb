# Funciona sin argumentos
t = Proc.new { |x,y| puts "I don't care about arguments! #{x}, #{y}" }
t.call
#=> I don't care about arguments! , s

# Funciona sólo con número correcto de argumentos
t = lambda { |x,y| puts "I care about arguments! #{x}, #{y}" }
t.call(5, 2)
#=> I care about arguments! 5, 2