class Order < ActiveRecord::Base
  
  attr_accessible :address, :phone_number
  
  has_many :lineitems, dependent: :destroy

  def add_lineitems_from_cart(cart)
    cart.lineitems.each do |item|
      item.cart_id = nil
      lineitems << item
    end
  end


end
