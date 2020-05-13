class CreatePlayerAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :player_awards do |t|
      t.string :player_id
      t.string :award_id
      t.integer :year_id
      t.string :lg_id

      t.timestamps
    end
  end
end
