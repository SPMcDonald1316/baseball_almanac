class CreateHallOfFames < ActiveRecord::Migration[6.0]
  def change
    create_table :hall_of_fames do |t|
      t.string :player_id
      t.integer :year_id
      t.string :inducted
      t.string :category

      t.timestamps
    end
  end
end
