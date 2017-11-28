get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end


post '/commented' do
  com = params["comment"]
  aut = params["author"]
  Comment.create(comment: com, author: aut);
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  redirect to ("/")
end