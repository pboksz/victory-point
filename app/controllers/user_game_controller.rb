class UserGameController < ApplicationController
  before_filter :get_current_games, :only => [:index, :new, :create]

  def index
    @current_games = @current_games.order_by_plays
  end

  def new
    @all_games = Game.all - current_user.games
    @game = UserGame.new
  end

  def create
    @game = @current_games.build(params[:user_game])
    if @game.save
      redirect_to user_game_index_path
    else
      render :new
    end
  end

  def destroy
    current_user.user_games.find(params[:id]).destroy
    redirect_to user_game_index_path
  end

  private

  def get_current_games
    @current_games = current_user.user_games
  end
end
