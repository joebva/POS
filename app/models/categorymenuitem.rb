class Categorymenuitem < ActiveRecord::Base
  attr_accessible :category_id, :description, :menuitem_id

  belongs_to :category
  belongs_to :menuitem
  
end
