class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :user_games, :dependent => :destroy
  has_many :games, :through => :user_games

  def gravatar_url
    "http://www.gravatar.com/avatar/#{Digest::MD5::hexdigest(email.strip.downcase)}"
  end
end
