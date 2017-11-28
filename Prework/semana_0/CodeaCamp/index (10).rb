get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  puts "Este es un GET a (/)"
  puts "Esto es lo que vale Params: #{params.inspect}"
  erb :index #Esto renderiza una vista llamada index.erb
end

