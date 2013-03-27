class Option < ActiveRecord::Base
  attr_accessible :name, :price

  has_many :groupoptions
  has_many :groups, :through => :groupoptions

end
