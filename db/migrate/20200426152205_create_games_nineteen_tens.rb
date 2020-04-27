class CreateGamesNineteenTens < ActiveRecord::Migration[6.0]
  def change
    create_table :games_nineteen_tens do |t|
      t.string :game_id
      t.string :away_team_id
      t.integer :inn_ct
      t.integer :bat_home_id
      t.integer :outs_ct
      t.integer :balls_ct
      t.integer :strikes_ct
      t.integer :away_score_ct
      t.integer :home_score_ct
      t.string :resp_bat_id
      t.string :resp_bat_hand_cd
      t.string :resp_pit_id
      t.string :resp_pit_hand_cd
      t.string :base1_run_id
      t.string :base2_run_id
      t.string :base3_run_id
      t.string :event_tx
      t.string :leadoff_fl
      t.string :ph_fl
      t.integer :bat_fld_cd
      t.integer :bat_lineup_id
      t.integer :event_cd
      t.string :bat_event_fl
      t.string :ab_fl
      t.integer :h_fl
      t.string :sh_fl
      t.string :sf_fl
      t.integer :event_outs_ct
      t.integer :rbi_ct
      t.string :wp_fl
      t.string :pb_fl
      t.integer :err_ct
      t.string :bat_dest_id
      t.string :run1_dest_id
      t.string :run2_dest_id
      t.string :run3_dest_id

      t.timestamps
    end
  end
end
