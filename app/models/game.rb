class Game < ActiveRecord::Base
  attr_accessible :name, :year_published, :minimum_players, :maximum_players

  validates :name, :year_published, :minimum_players, :maximum_players, :presence => true
  validates :name, :uniqueness => true

  def as_json
    {
      :id => id,
      :name => name,
      :year_published => year_published,
      :minimum_players => minimum_players,
      :maximum_players => maximum_players,
    }
  end
end
