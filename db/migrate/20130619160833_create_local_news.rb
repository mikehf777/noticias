class CreateLocalNews < ActiveRecord::Migration
  def change
    create_table :local_news do |t|
      t.string :emision
      t.date :fecha
      t.integer :user_id

      t.timestamps
    end
  end
end
