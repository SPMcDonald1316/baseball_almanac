class CreatePitchingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :pitching_stats do |t|
      t.string :player_id
      t.integer :year_id
      t.integer :stint
      t.string :team_id
      t.string :lg_id
      t.integer :w
      t.integer :l
      t.integer :g
      t.integer :gs
      t.integer :cg
      t.integer :sho
      t.integer :sv
      t.integer :ip_outs
      t.integer :h
      t.integer :er
      t.integer :hr
      t.integer :bb
      t.integer :so
      t.decimal :ba_opp, precision: 4, scale: 3
      t.decimal :era, precision: 5, scale: 2
      t.integer :ibb
      t.integer :wp
      t.integer :hbp
      t.integer :bk
      t.integer :bfp
      t.integer :gf
      t.integer :r
      t.integer :sh
      t.integer :sf
      t.integer :gidp

      t.timestamps
    end
  end
end
