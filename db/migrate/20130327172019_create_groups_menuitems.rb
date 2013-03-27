class CreateGroupsMenuitems < ActiveRecord::Migration
  def up
  	create_table :groups_menuitems do |t|
  		t.integer :group_id
  		t.integer :menuitem_id
	end
  end

  def down
  	drop_table :groups_menuitems
  end
end
