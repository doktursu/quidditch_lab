class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :competition
      t.integer :team_id
      t.integer :hometeam_id

      t.timestamps null: false
    end
  end
end
