x = 1
while x != 0
	promt = ">"
	v = 0.0
	u = 0.0
	t = 0.0
	g = 0.0
	puts "Insertar Velocidad Final"
	puts
	print promt
	v = gets.to_i
	puts "Insertar tiempo"
	puts
	print promt
	t = gets.to_i
	puts
	g = ((v - u)/t)
	puts " La gravedad es de #{g}"
	puts
	puts "1 para continuar, o para cerrar"
	puts
	print promt
end
