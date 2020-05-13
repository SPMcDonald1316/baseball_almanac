class Api::PlayersController < ApplicationController
  def index
    @players = Player.select(:id, :first_name, :last_name, :debut, :final_game).where("last_name LIKE ?", "#{params[:search]}%")
    render 'index.json.jb'
  end

  def show
    @player = Player.find_by(id: params[:id])
    @hitting = HittingStat.where(player_id: @player.player_id)
    @post_hitting = PostHittingStat.where(player_id: @player.player_id)
    @pitching = PitchingStat.where(player_id: @player.player_id)
    @post_pitching = PostPitchingStat.where(player_id: @player.player_id)
    @fielding = FieldingStat.where(player_id: @player.player_id)
    @post_fielding = PostFieldingStat.where(player_id: @player.player_id)
    @allstars = Allstar.where(player_id: @player.player_id)
    @awards = PlayerAward.where(player_id: @player.player_id)
    @hall_of_fame = HallOfFame.where(player_id: @player.player_id).find_by(inducted: "Y")
    @salaries = Salary.where(player_id: @player.player_id)
    render 'show.json.jb'
  end
end
