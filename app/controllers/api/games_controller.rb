class Api::GamesController < ApplicationController
  def index
    case (params[:year]).to_i
    when 1918..1919
      @games = GamesNineteenTen.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1920..1929
      @games = PlayByPlayNineteenTwenty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1930..1939
      @games = PlayByPlayNineteenThirty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1940..1949
      @games = PlayByPlayNineteenForty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1950..1959
      @games = PlayByPlayNineteenFifty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1960..1969
      @games = PlayByPlayNineteenSixty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1970..1979
      @games = PlayByPlayNineteenSeventy.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1980..1989
      @games = PlayByPlayNineteenEighty.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 1990..1999
      @games = PlayByPlayNineteenNinety.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 2000..2009
      @games = PlayByPlayTwoThousand.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    when 2010..2019
      @games = PlayByPlayTwoThousandTen.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    end
    render 'index.json.jb'
  end

  def show
    year = params[:game_id][3..6].to_i
    case year
    when 1918..1919
      @game = GamesNineteenTen.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1920..1929
      @game = PlayByPlayNineteenTwenty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1930..1939
      @game = PlayByPlayNineteenThirty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1940..1949
      @game = PlayByPlayNineteenForty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1950..1959
      @game = PlayByPlayNineteenFifty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1960..1969
      @game = PlayByPlayNineteenSixty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1970..1979
      @game = PlayByPlayNineteenSeventy.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1980..1989
      @game = PlayByPlayNineteenEighty.where("game_id LIKE ?", "#{params[:game_id]}")
    when 1990..1999
      @game = PlayByPlayNineteenNinety.where("game_id LIKE ?", "#{params[:game_id]}")
    when 2000..2009
      @game = PlayByPlayTwoThousand.where("game_id LIKE ?", "#{params[:game_id]}")
    when 2010..2019
      @game = PlayByPlayTwoThousandTen.where("game_id LIKE ?", "#{params[:game_id]}")
    end
    render 'show.json.jb'
  end
end
