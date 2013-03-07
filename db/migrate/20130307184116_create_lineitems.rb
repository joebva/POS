class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :menuitem
      t.references :order

      t.timestamps
    end
    add_index :lineitems, :menuitem_id
    add_index :lineitems, :order_id
  end
end
