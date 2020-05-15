module ConciseGameData
  extend ActiveSupport::Concern
  def home_team
    team_abbr = game_id[0..2]
    year = game_id[3..6]
    years = TeamStat.select(:team_id_retro, :name, :park).where(year_id: year)
    home_team = years.find_by(team_id_retro: team_abbr)
    return home_team.name, home_team.park
  end

  def away_team
    year = game_id[3..6]
    years = TeamStat.select(:team_id_retro, :name).where(year_id: year)
    away_team = years.find_by(team_id_retro: away_team_id)
    away_team.name
  end

  def game_date
    year = game_id[3..6]
    month = game_id[7..8]
    day = game_id[9..10]
    "#{month}/#{day}/#{year}"
  end

  def batter
    player = Player.find_by(retro_id: resp_bat_id)
    "#{player.first_name} #{player.last_name}"
  end

  def pitcher
    player = Player.find_by(retro_id: resp_pit_id)
    "#{player.first_name} #{player.last_name}"
  end

  def batting
    if bat_home_id == 0
      return away_team
    else
      return home_team[0]
    end
  end
end