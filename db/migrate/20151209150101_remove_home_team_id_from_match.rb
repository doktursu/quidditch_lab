class RemoveHomeTeamIdFromMatch < ActiveRecord::Migration
  def change
    remove_column :matches, :hometeam_id, :integer
  end
end
