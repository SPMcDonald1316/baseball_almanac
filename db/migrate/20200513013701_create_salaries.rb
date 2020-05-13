class CreateSalaries < ActiveRecord::Migration[6.0]
  def change
    create_table :salaries do |t|
      t.string :year_id
      t.string :team_id
      t.string :lg_id
      t.string :player_id
      t.integer :salary

      t.timestamps
    end
  end
end
