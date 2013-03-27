class Groupoption < ActiveRecord::Base
  attr_accessible :group_id, :option_id, :price

  belongs_to :group 
  belongs_to :option
  
end
