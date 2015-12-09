class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  def create
    Player.create(player_params)
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:name, :age, :team_id)
  end
end