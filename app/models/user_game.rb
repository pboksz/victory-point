class UserGame < ActiveRecord::Base
  attr_accessible :game_id, :user_id

  has_many :game_plays, :dependent => :destroy
  belongs_to :user
  belongs_to :game

  delegate :name, :year_published, :to => :game

  validates :user_id, :game_id, :presence => true
  validates :user_id, :uniqueness => { :scope => :game_id }

  scope :order_by_plays, order('play_count DESC, updated_at DESC')
end
