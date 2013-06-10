class UserGame < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  has_many :game_plays, :dependent => :destroy
  has_many :user_game_expansions, :dependent => :destroy

  belongs_to :game
  belongs_to :user

  delegate :name, :year_published, :player_range, :player_range_string, :to => :games

  validates :user_id, :game_id, :presence => true
  validates :user_id, :uniqueness => { :scope => :game_id }

  scope :order_by_plays, order('play_count DESC, updated_at DESC')
end
