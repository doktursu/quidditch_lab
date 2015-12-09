class RemoveWinnerFromMatch < ActiveRecord::Migration
  def change
    remove_column :matches, :winner, :string
  end
end
