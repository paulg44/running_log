class CreateLogFours < ActiveRecord::Migration[7.0]
  def change
    create_table :log_fours do |t|
      t.decimal :distance
      t.decimal :duration
      t.decimal :pace
      t.string :surface
      t.string :description

      t.timestamps
    end
  end
end
