class Api::PlayersController < ApplicationController
  def index
    @players = Player.where("last_name LIKE ?", "#{params[:search]}")
    render 'index.json.jb'
  end

  def show
    @player = Player.find_by(id: params[:id])
    @hitting = HittingStat.where(player_id: @player.player_id)
    @post_hitting = PostHittingStat.where(player_id: @player.player_id)
    @pitching = PitchingStat.where(player_id: @player.player_id)
    @fielding = FieldingStat.where(player_id: @player.player_id)
    @post_fielding = PostFieldingStat.where(player_id: @player.player_id)
    render 'show.json.jb'
  end
end
