class ChangePaceToDecimal < ActiveRecord::Migration[7.0]
  # Changing pace to decimal to see if it works as I'd like, but adding a down variable so I can roll it back
  def up
    change_column :tests, :pace, :decimal
  end

  def down 
    change_column :tests, :pace, :integer
  end
end
