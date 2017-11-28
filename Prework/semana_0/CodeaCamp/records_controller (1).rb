get '/records' do
  #¿Qué va en esta parte para obtener la lista de ganadores (juegos ganados)? Ordenados en orden descendente
	 @array_players=[]
   players = Player.all
   players.each do |player|  
    @array_players << [player.games.where(winner?: true).count, player.username]
   end
   p @array_players = @array_players.sort.reverse
  erb :record
end