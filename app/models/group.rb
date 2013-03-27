class Group < ActiveRecord::Base
  attr_accessible :name, :select

  has_and_belongs_to_many :menuitems

end
