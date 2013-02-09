class CreateGamePlays < ActiveRecord::Migration
  def change
    create_table :game_plays do |t|
      t.integer :number_of_players

      t.timestamps
    end
  end
end
