class GamePlayController < ApplicationController
  before_filter :get_current_game

  def new
    @game_play = GamePlay.new
  end

  def create
    @game_play = @current_game.game_plays.build(params[:game_play])
    if @game_play.save
      redirect_to user_game_index_path
    else
      render :new
    end
  end

  private

  def get_current_game
    @current_game = current_user.user_games.find(params[:user_game_id])
  end
end
