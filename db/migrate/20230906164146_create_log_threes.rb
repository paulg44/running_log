class CreateLogThrees < ActiveRecord::Migration[7.0]
  def change
    create_table :log_threes do |t|
      t.decimal :distance
      t.decimal :duration
      t.decimal :pace
      t.string :surface
      t.string :d

      t.timestamps
    end
  end
end
