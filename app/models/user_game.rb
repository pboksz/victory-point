class UserGame < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  belongs_to :user
  belongs_to :game

  validates :user, :game, :presence => true
  validates :user, :uniqueness => { :scope => :game }
end
