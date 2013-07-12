class CreatePlazas < ActiveRecord::Migration
  def change
    create_table :plazas do |t|
      t.string :name

      t.timestamps
    end
  end
end
