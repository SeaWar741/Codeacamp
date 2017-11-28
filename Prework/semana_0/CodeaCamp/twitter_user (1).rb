get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end


post '/fetch' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  #erb :index
end

get '/:handle' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  #erb :index
end