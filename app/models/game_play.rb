class GamePlay < ActiveRecord::Base
  attr_accessible :number_of_players

  belongs_to :user_game

  validates :number_of_players, :presence => true
end
