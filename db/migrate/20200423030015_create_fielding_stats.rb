class CreateFieldingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :fielding_stats do |t|
      t.string :player_id
      t.integer :year_id
      t.integer :stint
      t.string :team_id
      t.string :lg_id
      t.string :pos
      t.integer :g
      t.integer :gs
      t.integer :inn_outs
      t.integer :po
      t.integer :a
      t.integer :e
      t.integer :dp
      t.integer :pb
      t.integer :wp
      t.integer :sb
      t.integer :cs

      t.timestamps
    end
  end
end
