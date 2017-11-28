# GETS ============================================

get '/signup' do
	erb :signup
end


# POSTS ============================================

post '/signup' do
  @player = Player.new(username: params[:username], email: params[:email], password: params[:password])

  if @player.save
    session[:id] = @player.id
    redirect to ("/secret/#{@player.id}")
  else
    #@message_error = "El correo que ingreso ya fue registrado"
    redirect to('/signup')    
  end
end