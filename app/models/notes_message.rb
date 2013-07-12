class NotesMessage < ActiveRecord::Base
  attr_accessible :message_id, :note_id, :local_news_id ,:priority
  belongs_to :note
  belongs_to :message
  belongs_to :local_news
  scope :prioridad , order(:priority).includes(:note)
end
