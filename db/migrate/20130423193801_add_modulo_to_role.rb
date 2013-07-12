class AddModuloToRole < ActiveRecord::Migration
  def change
    add_column :roles, :modulo, :string
  end
end
