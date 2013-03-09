class AddPlayedAtToGamePlay < ActiveRecord::Migration
  def change
    add_column :game_plays, :played_at, :datetime
  end
end
