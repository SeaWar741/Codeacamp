#Metodo que verifica antes de que el usuario entre
before "/secret/:id" do
  session[:id]
  unless session[:id]
    redirect to('/')
  end 
end

get '/' do
  erb :index
end

get "/secret/:id" do
  erb :secret
end
