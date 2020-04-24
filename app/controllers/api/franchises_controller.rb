class Api::FranchisesController < ApplicationController
  def index
    @franchises = Franchise.all
    render 'index.json.jb'
  end

  def show
    @franchise = Franchise.find_by(id: params[:id])
    @team_stats = TeamStat.where(franch_id: @franchise.franch_id)
    render 'show.json.jb'
  end
end
