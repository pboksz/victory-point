class UserGameController < ApplicationController
  before_filter :get_current_games, :only => [:index, :new, :create]
  before_filter :get_current_game, :only => [:destroy, :new_play, :create_play]

  def index

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
    @current_game.destroy
    redirect_to user_game_index_path
  end

  private

  def get_current_games
    @current_games = current_user.user_games
  end

  def get_current_game
    @current_game = current_user.user_games.find(params[:id])
  end
end
