class AddPiorityToNotification < ActiveRecord::Migration
  def up
    add_column :notifications, :piority, :string
  end

  def down
  end 
end
