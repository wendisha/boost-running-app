class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.integer :user_id
      t.integer :charity_id
      t.integer :distance
      t.integer :duration
      t.integer :shoes
      t.string :location
      t.string :notes
      t.timestamps
    end
  end
end
