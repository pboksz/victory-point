class Game < ActiveRecord::Base
  attr_accessible :name, :year_published, :minimum_players, :maximum_players

  validates :name, :year_published, :minimum_players, :maximum_players, :presence => true
  validates :name, :uniqueness => true

  def player_range
    (minimum_players..maximum_players)
  end

  def player_range_string
    "#{minimum_players} - #{maximum_players}"
  end
end
