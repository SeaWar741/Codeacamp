def method_1(string) # <--- Regresa true si encuentra un numero de cuenta
	if /\d{4}\-\d{3}-\d{3}/.match(string)
		p true
	else
		p nil
	end # <--- Regresa true si encuentra un numero de cuenta.
end

def method_2(string) #  <--- Regresa un número de cuenta si existe dentro del string y nil en el caso contrario.
	regular_exp = /(\d{4}\-\d{3}-\d{3})/
		if regular_exp.match string 
				x = /(\d{4}\-\d{3}-\d{3})/.match(string)
				p x[0]
		else
			p nil
		end
end

def method_3(string) # <--- Regresa un array con los números de cuenta que existen dentro del string y un array vacío en el caso contrario.
	arry = []
	if /\d{4}\-\d{3}-\d{3}/.match(string) # <--- when there is a valid account
			x = /(\d{4}\-\d{3}-\d{3})/.match(string)
			value = x[0]
		arry << value
	elsif !/\d{4}\-\d{3}-\d{3}/.match(string) # <--- when there is not a valid account
		nil
	end
	p arry
end

def method_4(string) # <--- Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros siete numeros. ej. "XXXX-XXX-234"
	if /\d{4}\-\d{3}-\d{3}/.match(string)
	x = /(\d{4}\-\d{3}-\d{3})/.match(string)
	x[0]
	y = x[0].gsub(/[^0-9]+/,'')
	z = y.split(//).last(3).join
	p "XXXX-XXX-#{z}"
	else
		"not a valid number"
	end
end

def method_5(string) # <--- Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de menos dígitos no debería remplazarlo.
	y = string.gsub(/[^0-9]+/,'')
	if y.to_f > 10
		x = y.split(//).first(4).join
		z = y.split(//).last(6).join
		u = z.gsub(/(.{3})/, '\1-')
		p "#{x}-#{u.split(//).first(7).join}"
	end
end


# test
x = "El Cliente con el número de cuenta 1234-123-123 se encuentra en proceso de revisión de sus documentos"
y = "El Cliente con el número de cuenta 12345-1234-234 se encuentra en proceso de revisión"
z = "Numero de cuenta: 1234567891"

method_1(x) #true
puts
method_2(x) #"1234-123-123"
puts
method_2(y) # nil
puts
method_3(x) # ["1234-123-123"]
puts 
method_4(x) #"XXXX-XXX-123"
puts
method_4(y) #"not a valid number"
puts
method_5(z) #1234-567-891


