class CreatePostFieldingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :post_fielding_stats do |t|
      t.string :player_id
      t.integer :year_id
      t.string :team_id
      t.string :lg_id
      t.string :round
      t.string :pos
      t.integer :g
      t.integer :gs
      t.integer :inn_outs
      t.integer :po
      t.integer :a
      t.integer :e
      t.integer :dp
      t.integer :tp
      t.integer :pb
      t.integer :sb
      t.integer :cs

      t.timestamps
    end
  end
end
