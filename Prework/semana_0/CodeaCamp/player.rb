include BCrypt
class Player<ActiveRecord::Base
  has_many :games
  validates :email, presence: true, uniqueness:true

    
  def self.authenticate(email, player_password)
    player = Player.find_by(email: email)
    if player && (player.password == player_password)
      return player
    else
      nil
    end
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(player_password)
    @password = Password.create(player_password)
    self.password_digest = @password
  end

end