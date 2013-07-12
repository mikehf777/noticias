class Notification < ActiveRecord::Base
  attr_accessible :description, :notified_user_id, :title,:tipo, :user_id, :fecha,:piority,:realizada
  belongs_to :user
  validates :description, :notified_user_id,:title,:tipo,:fecha, :piority,:presence => true
  scope :todas , lambda { |id| where(notified_user_id:id) }
  scope :notifico , lambda { |id| where(user_id:id) }
  scope :hoy, where(fecha: Date.today)
  scope :pendientes , where(realizada: :false)
  scope :notified_user , lambda { |id| where(notified_user_id:id) }
end
