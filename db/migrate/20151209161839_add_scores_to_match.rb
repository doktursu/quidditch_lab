class AddScoresToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :team_score, :integer
    add_column :matches, :home_team_score, :integer
    add_column :matches, :winner, :string
  end
end
