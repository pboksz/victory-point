class GameExpansionController < ApplicationController
  before_filter :find_game

  def create
    @expansion = @game.game_expansions.build(params[:game_expansion])

    if @expansion.save
      render :json => @expansion.as_json
    else
      render :json => 'error'
    end
  end

  def update
    @expansion = @game.game_expansions.find(params[:id])

    if @expansion.update_attributes(params[:game_expansion])
      render :json => @expansion.as_json
    else
      render :json => 'error'
    end
  end

  def destroy
    @expansion = @game.game_expansions.find(params[:id])

    if @expansion.destroy
      render :json => @expansion.as_json
    else
      render :json => 'error'
    end
  end

  private

  def find_game
    @game = Game.find(params[:game_id])
  end
end
