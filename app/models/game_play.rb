class GamePlay < ActiveRecord::Base
  attr_accessible :number_of_players, :played_at

  belongs_to :user_game, :counter_cache => :play_count, :touch => true

  validates :number_of_players, :played_at, :presence => true

  scope :order_by_played_at, order('played_at DESC')
end
