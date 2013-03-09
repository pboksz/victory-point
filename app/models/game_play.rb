class GamePlay < ActiveRecord::Base
  attr_accessible :number_of_players, :played_at

  belongs_to :user_game

  validates :number_of_players, :played_at, :presence => true
end
