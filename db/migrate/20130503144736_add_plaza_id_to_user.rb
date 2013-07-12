class AddPlazaIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :plaza_id, :integer
  end
end
