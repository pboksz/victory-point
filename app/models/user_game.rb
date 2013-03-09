class UserGame < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  has_many :game_plays, :dependent => :destroy
  belongs_to :user
  belongs_to :game

  delegate :name, :year_published, :to => :game

  validates :user_id, :game_id, :presence => true
  validates :user_id, :uniqueness => { :scope => :game_id }

  def play_count #TODO this should be counter cache
    game_plays.try(:count)
  end
end
