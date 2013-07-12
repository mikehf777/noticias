class AddTituloPeriodicoToNote < ActiveRecord::Migration
  def change
    add_column :notes, :titulo_periodico, :string
    add_column :notes, :inserto, :text
    add_column :notes, :content, :text
    add_column :notes, :link, :string
  end
end
