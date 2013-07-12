class Note < ActiveRecord::Base
  attr_accessible :avance, :titulo,:user_id,:camarografo_id,:source_id, :plaza_id,:notification_id,:titulo_periodico,:inserto,:content,:link,:anuario
  belongs_to :user 
  belongs_to :plaza
  belongs_to :source
  has_many :notes_message
  validates :avance,:titulo ,:camarografo_id , :source_id , :plaza_id,presence: :true

  scope :fuente , order(:source_id).includes(:source)
  scope :pertenece , lambda { |id| where(user_id:id) }
  scope :dia , where('created_at > ?', Date.today)
  scope :plaza , lambda{ |id| where(plaza_id:id).order(:source_id) } 
  scope :terminada, lambda { |c| where(content:c)}
  scope :plazas , order(:plaza_id).order(:source_id).includes(:source)
end
