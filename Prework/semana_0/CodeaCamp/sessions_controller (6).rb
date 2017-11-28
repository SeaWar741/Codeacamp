# GETS ============================================

get '/signin' do
	erb :signin
end

#Ruta para terminar sesion
get '/logout' do
  session.clear
  redirect to("/")
end

# POSTS ============================================

post '/signin' do
  #¿Qué va en esta parte para ingresar al juego?
@player = Player.authenticate(params[:email], params[:password])
  if @player
    session[:id] = @player.id
    redirect to ("/secret/#{@player.id}")
  else
    redirect to("/signin")
  end
end

