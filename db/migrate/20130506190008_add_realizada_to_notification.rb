class AddRealizadaToNotification < ActiveRecord::Migration
  def change
    add_column :notifications, :realizada, :boolean
  end
end
