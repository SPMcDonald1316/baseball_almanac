class CreateAllstars < ActiveRecord::Migration[6.0]
  def change
    create_table :allstars do |t|
      t.string :player_id
      t.integer :year_id
      t.string :game_id
      t.string :team_id
      t.string :lg_id

      t.timestamps
    end
  end
end
