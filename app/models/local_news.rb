class LocalNews < ActiveRecord::Base
  attr_accessible :emision, :fecha, :user_id,:plaza_id ,:notes_messages_attributes
  has_many :notes_messages
  belongs_to :plaza
  belongs_to :user
  accepts_nested_attributes_for :notes_messages ,:reject_if => proc { |attributes| attributes['priority'] < "1" }
  before_save :add_fecha
  scope :fecha , order(:fecha).includes(:user)
  def add_fecha
  	self.fecha = Date.today
  end

end
