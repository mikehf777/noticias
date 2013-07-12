class AddDetailsToNote < ActiveRecord::Migration
  def change
    add_column :notes, :camarografo_id, :integer
    add_column :notes, :source_id, :integer
    add_column :notes, :plaza_id, :integer
  end
end
