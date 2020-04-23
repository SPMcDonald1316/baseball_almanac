class CreateTeamStats < ActiveRecord::Migration[6.0]
  def change
    create_table :team_stats do |t|
      t.integer :year_id
      t.string :lg_id
      t.string :team_id
      t.string :franch_id
      t.string :div_id
      t.integer :rank
      t.integer :g
      t.integer :g_home
      t.integer :w
      t.integer :l
      t.string :div_win
      t.string :wc_win
      t.string :lg_win
      t.string :ws_win
      t.integer :r
      t.integer :ab
      t.integer :h
      t.integer :doubles
      t.integer :triples
      t.integer :hr
      t.integer :bb
      t.integer :so
      t.integer :sb
      t.integer :cs
      t.integer :hbp
      t.integer :sf
      t.integer :ra
      t.integer :er
      t.decimal :era, precision: 3, scale: 2
      t.integer :cg
      t.integer :sho
      t.integer :sv
      t.integer :ip_outs
      t.integer :ha
      t.integer :bba
      t.integer :soa
      t.integer :e
      t.integer :dp
      t.decimal :fp, precision: 4, scale: 3
      t.string :name
      t.string :park
      t.integer :attendance
      t.integer :bpf
      t.integer :ppf
      t.string :team_id_br
      t.string :team_id_lahman
      t.string :team_id_retro

      t.timestamps
    end
  end
end
