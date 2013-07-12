class AddPlazaIdToLocalNews < ActiveRecord::Migration
  def change
    add_column :local_news, :plaza_id, :integer
  end
end
