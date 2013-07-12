class AddLocalNewsIdToNotesMessage < ActiveRecord::Migration
  def change
    add_column :notes_messages, :local_news_id, :integer
  end
end
