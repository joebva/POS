class StoreController < ApplicationController
  def index
  	@menuitems = Menuitem.order(:name)
  end
end
