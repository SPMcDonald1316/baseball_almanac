class AddHraToTeamStats < ActiveRecord::Migration[6.0]
  def change
    add_column :team_stats, :hra, :integer
  end
end
