class CreateNotesMessages < ActiveRecord::Migration
  def change
    create_table :notes_messages do |t|
      t.float :priority
      t.integer :note_id
      t.integer :message_id

      t.timestamps
    end
  end
end
