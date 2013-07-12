class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me,:plaza_id,:source_id,:camarografo_id
  has_many :notifications
  has_many :notes
  has_many :local_news
  belongs_to :plaza
  belongs_to :source 
   scope :plaza , lambda { |id| where(plaza_id:id) }


  def self.get_user id
    User.find(id)
  end

end
