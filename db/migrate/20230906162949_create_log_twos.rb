class CreateLogTwos < ActiveRecord::Migration[7.0]
  def change
    create_table :log_twos do |t|
      t.integer :distance
      t.integer :duration
      t.integer :pace
      t.string :surface
      t.string :description

      t.timestamps
    end
  end
end
