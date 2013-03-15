class GameExpansion < ActiveRecord::Base
  attr_accessible :game_id, :name, :year_published, :minimum_players, :maximum_players

  belongs_to :game

  validates :name, :year_published, :minimum_players, :maximum_players, :presence => true
  validates :name, :uniqueness => true
end
