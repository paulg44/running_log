class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.date :date
      t.integer :distance
      t.time :duration
      t.integer :pace
      t.string :surface
      t.string :description

      t.timestamps
    end
  end
end
