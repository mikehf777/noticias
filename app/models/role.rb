class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles
  belongs_to :resource, :polymorphic => true
  attr_accessible :name , :modulo
  scope :noticias , where(modulo: "noticias")

  def modulos
  	a=[]
  	self.Role.all do |r|
  		a.push(r.modulo)
  	end
    return a
  end
  scopify
end
