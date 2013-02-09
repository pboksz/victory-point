class UserGameController < ApplicationController
  def index
    @games = current_user.games
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def play

  end
end
