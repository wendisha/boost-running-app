class ChangeShoesTypeInRuns < ActiveRecord::Migration[5.2]
  def change
    change_column :runs, :shoes, :string
  end
end
