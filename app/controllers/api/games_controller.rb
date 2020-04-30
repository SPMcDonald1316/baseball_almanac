class Api::GamesController < ApplicationController
  def index
    @games = PlayByPlayTwoThousand.where("game_id LIKE '#{params[:team]}#{params[:year]}%' OR (game_id LIKE '%#{params[:year]}%' AND away_team_id LIKE '#{params[:team]}')").uniq{|game| game.game_id}
    render 'index.json.jb'
  end

  def show
    @game = PlayByPlayTwoThousand.where("game_id LIKE ?", "#{params[:game_id]}")
    render 'show.json.jb'
  end
end
