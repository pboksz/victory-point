class AddPlayersRangeToGame < ActiveRecord::Migration
  def change
    add_column :games, :minimum_players, :integer
    add_column :games, :maximum_players, :integer
  end
end
