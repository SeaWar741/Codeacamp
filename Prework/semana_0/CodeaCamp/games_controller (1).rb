get '/score/:user_id' do
  #¿Qué va en esta parte para obtener la puntuación de cada jugador (submarinos destruidos en cada ronda) y
  #número de juegos ganados?
  @rounds=Game.all
  erb :round
end

post '/games' do
  subs_destroy = params["subs_destroyed"].to_i
  winner = params["winner"].to_s == "true" ? true : false
  Game.create(player_id: session[:id], subs_destroyed: subs_destroy, winner?: winner)
end

post '/new_game' do
  redirect to ("/secret/#{session[:id]}") 
end