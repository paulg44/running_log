class ChangeDurationToString < ActiveRecord::Migration[7.0]
  def change
    change_column :tests, :duration, :string
  end
end
