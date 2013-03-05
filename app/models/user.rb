class User < ActiveRecord::Base
  attr_accessible :password_digest, :username
  
  has_secure_password
  validates_uniqueness_of :username

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    if not user && user.authenticate(password)
      nil
    else
      return user
    end
  end

end