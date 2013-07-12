class AddNotificationIdToNote < ActiveRecord::Migration
  def change
    add_column :notes, :notification_id, :integer
  end
end
