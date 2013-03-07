class Order < ActiveRecord::Base
  
  attr_accessible :address, :phone_number
  
  has_many :lineitems
  
end
