class Plaza < ActiveRecord::Base
  attr_accessible :name
  has_many :users 
  has_many :notes
  has_many :local_news
end
