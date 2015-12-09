class MatchesController < ApplicationController
  
  def index
    @matches = Match.all
  end

  private
  def player_params
    params.require(:player).permit(:name, :age, :team_id)
  end
end