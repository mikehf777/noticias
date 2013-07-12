class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.text :description
      t.string :tipo
      t.integer :user_id
      t.integer :notified_user_id

      t.timestamps
    end
  end
end
