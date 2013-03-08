class Lineitem < ActiveRecord::Base
  belongs_to :menuitem
  belongs_to :order
  belongs_to :cart
  # attr_accessible :title, :body
end
