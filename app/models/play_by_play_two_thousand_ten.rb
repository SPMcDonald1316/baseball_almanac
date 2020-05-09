class PlayByPlayTwoThousandTen < ApplicationRecord
  def home_team
    team_abbr = game_id[0..2]
    team = Franchise.find_by(franch_id: team_abbr)
    home_team = team.franch_name
  end

  def away_team
    team = Franchise.find_by(franch_id: away_team_id)
    away_team = team.franch_name
  end
end