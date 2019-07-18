class RemoveShoesFromRuns < ActiveRecord::Migration[5.2]
  def change
    remove_column :runs, :shoes
  end
end
