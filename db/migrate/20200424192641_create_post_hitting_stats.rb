class CreatePostHittingStats < ActiveRecord::Migration[6.0]
  def change
    create_table :post_hitting_stats do |t|
      t.integer :year_id
      t.string :round
      t.string :player_id
      t.string :team_id
      t.string :lg_id
      t.integer :g
      t.integer :ab
      t.integer :r
      t.integer :h
      t.integer :doubles
      t.integer :triples
      t.integer :hr
      t.integer :rbi
      t.integer :sb
      t.integer :cs
      t.integer :bb
      t.integer :so
      t.integer :ibb
      t.integer :hbp
      t.integer :sh
      t.integer :sf
      t.integer :gidp

      t.timestamps
    end
  end
end
