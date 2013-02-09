class GameController < ApplicationController
  def index
    @games = current_user.games
  end

  def new

  end

  def create

  end
end
