class CreateUserGameExpansions < ActiveRecord::Migration
  def change
    create_table :user_game_expansions do |t|
      t.integer :game_expansion_id
      t.integer :user_game_id

      t.timestamps
    end
  end
end
