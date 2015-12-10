class MatchesController < ApplicationController
  
  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
    @teams = Team.all
  end

  def create
    Match.create(match_params)
    redirect_to matches_path
  end

  def edit
    @match = Match.find(params[:id])
    @teams = Team.all
  end

  def update
    Match.find(params[:id]).update(match_params)
    redirect_to matches_path
  end

  def destroy
    Match.find(params[:id]).destroy
    redirect_to matches_path
  end

  private
  def match_params
    params.require(:match).permit(:competition, :team_id, :home_team_id,  :team_score, :home_team_score)
  end

end


