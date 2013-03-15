class UserGameExpansion < ActiveRecord::Base
  attr_accessible :game_expansion_id, :user_id

  belongs_to :game_expansion
  belongs_to :user_game

  delegate :name, :year_published, :to => :game_expansion

  validates :user_game_id, :game_expansion_id, :presence => true
  validates :user_game_id, :uniqueness => { :scope => :game_expansion_id }
end
