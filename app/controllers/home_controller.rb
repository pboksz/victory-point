class HomeController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
    if user_signed_in?
      redirect_to user_game_index_path
    end
  end
end
