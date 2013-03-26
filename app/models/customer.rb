class Customer < ActiveRecord::Base
  attr_accessible :address, :deliveryremarks, :geocode, :name, :phone

  has_many :orders

  
end
