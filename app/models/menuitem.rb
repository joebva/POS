class Menuitem < ActiveRecord::Base
  attr_accessible :group1, :group2, :name, :price
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_and_belongs_to_many :groups

  has_many :categorymenuitems
  has_many :categories, :through => :categorymenuitems

  private

  def ensure_not_referenced_by_any_line_item
  	if line_items.empty?
  		return true
  	else
  		errors.add(:base, 'Line Items present')
  		return false
  	end
  end

  
end
