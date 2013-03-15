class CreateGameExpansions < ActiveRecord::Migration
  def change
    create_table :game_expansions do |t|
      t.string :name
      t.integer :year_published
      t.integer :minimum_players
      t.integer :maximum_players
      t.integer :game_id

      t.timestamps
    end
  end
end
