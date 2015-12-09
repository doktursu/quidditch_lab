class CreateHomeTeams < ActiveRecord::Migration
  def change
    create_table :home_teams do |t|

      t.timestamps null: false
    end
  end
end
