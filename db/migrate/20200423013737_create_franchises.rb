class CreateFranchises < ActiveRecord::Migration[6.0]
  def change
    create_table :franchises do |t|
      t.string :franch_id
      t.string :franch_name
      t.string :active
      t.string :na_assoc

      t.timestamps
    end
  end
end
