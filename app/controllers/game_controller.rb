class GameController < ApplicationController
  def index
    @games = Game.all

    respond_to do |format|
      format.html
      format.json { render :json => @games.as_json }
    end
  end

  def create
    @game = Game.new(params[:game])

    if @game.save
      render :json => @game.as_json
    else
      render :json => 'error'
    end
  end

  def destroy
    @game = Game.find(params[:id])

    if @game.destroy
      render :json => @game.as_json
    else
      render :json => 'error'
    end
  end
end
