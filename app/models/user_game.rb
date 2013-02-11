class UserGame < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  has_many :game_plays
  belongs_to :user
  belongs_to :game

  validates :user_id, :game_id, :presence => true
  validates :user_id, :uniqueness => { :scope => :game_id }
end
