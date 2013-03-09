class Cart < ActiveRecord::Base
  has_many :lineitems, dependent: :destroy
  # attr_accessible :title, :body
end
