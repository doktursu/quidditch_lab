class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :competition
      t.integer :team_1_id
      t.integer :team_2_id

      t.timestamps null: false
    end
  end
end
