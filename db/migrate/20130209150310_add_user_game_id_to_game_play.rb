class AddUserGameIdToGamePlay < ActiveRecord::Migration
  def change
    add_column :game_plays, :user_game_id, :integer
  end
end
