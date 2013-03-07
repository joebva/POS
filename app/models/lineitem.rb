class Lineitem < ActiveRecord::Base
  belongs_to :menuitem
  belongs_to :order
  # attr_accessible :title, :body
end
