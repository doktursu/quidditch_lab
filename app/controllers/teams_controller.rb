class TeamsController < ApplicationController
  def index
    @teams = Team.all.order(:name)
  end

  def new
    @team = Team.new
  end

  def create
    team = Team.create(team_params)
    HomeTeam.create(team_id: team.id)
    redirect_to teams_path
  end

  def show
    @team = Team.find(params[:id])
    # binding.pry
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    Team.find(params[:id]).update(team_params)
    redirect_to teams_path
  end

  def destroy
    Team.find(params[:id]).destroy
    redirect_to teams_path
  end

  private
  def team_params
    params.require(:team).permit(:name, :image, :founded, :mascot, :ground, :league, :last_position)
  end

end