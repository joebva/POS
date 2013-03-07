class LineItem < ActiveRecord::Base
  belongs_to :menuitem
  belongs_to :order
  
  attr_accessible :menuitem, :order
  
end
