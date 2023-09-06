class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.date :date
      t.integer :distance
      t.integer :duration
      t.integer :pace
      t.string :surface
      t.string :description

      t.timestamps
    end
  end
end
