class Category < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :categorymenuitems
  has_many :menuitems, :through => :categorymenuitems


end
