class CreateJoinTableTeamCompetition < ActiveRecord::Migration
  def change
    create_join_table :teams, :competitions do |t|
      # t.index [:team_id, :competition_id]
      # t.index [:competition_id, :team_id]
    end
  end
end
