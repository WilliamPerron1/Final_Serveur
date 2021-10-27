class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.text :game_data
      t.timestamps
    end
  end
end
