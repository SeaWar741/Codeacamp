helpers do
  def current_player
    if session[:player_id]
      @current_player ||= Player.find_by_id(session[:player_id])
    end
  end

  def logged_in?
    !current_player.nil?
  end
end