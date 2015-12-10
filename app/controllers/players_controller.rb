class PlayersController < ApplicationController
  
  def index
    @players = Player.all.order(:name)
  end

  def new
    @player = Player.new
    @teams = Team.all.order(:name)
  end

  def create
    Player.create(player_params)
    redirect_to players_path
  end

  def edit
    @player = Player.find(params[:id])
    @teams = Team.all.order(:name)
  end

  def update
    Player.find(params[:id]).update(player_params)
    redirect_to players_path
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:name, :age, :team_id)
  end
end