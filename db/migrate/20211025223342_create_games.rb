class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :creator, null: false
      t.belongs_to :opponent, null: false
      t.belongs_to :winner
      t.belongs_to :player_turn
      t.text :game_data
      t.timestamps
    end


    add_foreign_key :games, :users, column: :creator_id
    add_foreign_key :games, :users, column: :opponent_id
    add_foreign_key :games, :users, column: :winner_id
    add_foreign_key :games, :users, column: :player_turn_id
  end
end
