class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :player_id
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.string :birth_country
      t.string :birth_state
      t.string :birth_city
      t.integer :death_year
      t.integer :death_month
      t.integer :death_day
      t.string :death_country
      t.string :death_state
      t.string :death_city
      t.string :first_name
      t.string :last_name
      t.string :given_name
      t.integer :weight
      t.integer :height
      t.string :bats
      t.string :throws
      t.date :debut
      t.date :final_game
      t.string :retro_id
      t.string :bbref_id

      t.timestamps
    end
  end
end
