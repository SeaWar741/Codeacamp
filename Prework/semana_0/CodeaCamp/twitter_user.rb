include BCrypt

class TwitterUser < ActiveRecord::Base
  has_many :tweets
  validates :email, presence: true, uniqueness:true

    
  def self.authenticate(email, user_password)
    user = TwitterUser.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end

end