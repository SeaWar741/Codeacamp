# Funciona sin argumentos
t = Proc.new { |x,y| puts "I don't care about arguments! #{x}, #{y}" }
t.call
#=> I don't care about arguments! , s