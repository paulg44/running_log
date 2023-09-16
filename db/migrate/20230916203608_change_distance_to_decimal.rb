class ChangeDistanceToDecimal < ActiveRecord::Migration[7.0]
   # Changing distance to decimal to see if it works as I'd like, but adding a down variable so I can roll it back
   def up
    change_column :tests, :distance, :decimal
  end

  def down 
    change_column :tests, :distance, :integer
  end
end
