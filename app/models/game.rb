class Game < ActiveRecord::Base
  attr_accessible :name, :year_published

  validates :name, :year_published, :presence => true
  validates :name, :uniqueness => true
end
