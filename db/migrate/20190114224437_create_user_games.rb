class CreateUserGames < ActiveRecord::Migration[5.2]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.boolean :favorite, default: 0

      t.timestamps
    end
  end
end
