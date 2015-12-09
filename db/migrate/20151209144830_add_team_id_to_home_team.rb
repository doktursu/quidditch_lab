class AddTeamIdToHomeTeam < ActiveRecord::Migration
  def change
    add_column :home_teams, :team_id, :integer
  end
end
