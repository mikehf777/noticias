class Message < ActiveRecord::Base
  attr_accessible :title
  validates :title , presence: :true
  has_many :notes_message
end
