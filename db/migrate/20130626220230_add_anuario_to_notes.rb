class AddAnuarioToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :anuario, :boolean
  end
end
