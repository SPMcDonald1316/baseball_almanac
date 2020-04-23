class Api::PlayersController < ApplicationController
  def index
    @players = Player.where("last_name LIKE ?", "#{params[:search]}")
    render 'index.json.jb'
  end
end
