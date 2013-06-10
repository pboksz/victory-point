class GamesController < ApplicationController
  def index
    @games = Game.all

    respond_to do |format|
      format.html # render normal html template
      format.json { render :json => @games.as_json }
    end
  end

  def create
    @game = Game.new(params[:games])

    if @game.save
      render :json => @game.as_json
    else
      render :json => 'error'
    end
  end

  def update
    @game = Game.find(params[:id])

    if @game.update_attributes(params[:games])
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
