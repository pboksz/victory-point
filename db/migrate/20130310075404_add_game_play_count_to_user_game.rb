class AddGamePlayCountToUserGame < ActiveRecord::Migration
  def change
    add_column :user_games, :play_count, :integer, :default => 0

    UserGame.all.each do |game|
      UserGame.update_counters(game.id, :play_count => game.game_plays.count)
    end
  end
end
