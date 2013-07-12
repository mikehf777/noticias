class AddCamarografoIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :camarografo_id, :integer
  end
end
