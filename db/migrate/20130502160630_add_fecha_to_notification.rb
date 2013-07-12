class AddFechaToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :fecha, :date
  end
end
