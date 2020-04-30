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
    year = params[:game_id][3..6]
    p year
    case year
    when '1918', '1919'
      @game = GamesNineteenTen.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1920', '1921', '1922', '1923', '1924', '1925', '1926', '1927', '1928', '1929'
      @game = PlayByPlayNineteenTwenty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1930', '1931', '1932', '1933', '1934', '1935', '1936', '1937', '1938', '1939'
      @game = PlayByPlayNineteenThirty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1940', '1941', '1942', '1943', '1944', '1945', '1946', '1947', '1948', '1949'
      @game = PlayByPlayNineteenForty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1950', '1951', '1952', '1953', '1954', '1955', '1956', '1957', '1958', '1959'
      @game = PlayByPlayNineteenFifty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1960', '1961', '1962', '1963', '1964', '1965', '1966', '1967', '1968', '1969'
      @game = PlayByPlayNineteenSixty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1970', '1971', '1972', '1973', '1974', '1975', '1976', '1977', '1978', '1979'
      @game = PlayByPlayNineteenSeventy.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1980', '1981', '1982', '1983', '1984', '1985', '1986', '1987', '1988', '1989'
      @game = PlayByPlayNineteenEighty.where("game_id LIKE ?", "#{params[:game_id]}")
    when '1990', '1991', '1992', '1993', '1994', '1995', '1996', '1997', '1998', '1999'
      @game = PlayByPlayNineteenNinety.where("game_id LIKE ?", "#{params[:game_id]}")
    when '2000', '2001', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009'
      @game = PlayByPlayTwoThousand.where("game_id LIKE ?", "#{params[:game_id]}")
    when '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019'
      @game = PlayByPlayTwoThousandTen.where("game_id LIKE ?", "#{params[:game_id]}")
    end
    render 'show.json.jb'
  end
end
