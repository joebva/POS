class CreateMenuitems < ActiveRecord::Migration
  def change
    create_table :menuitems do |t|
      t.string :name
      t.decimal :price
      t.integer :group1
      t.integer :group2

      t.timestamps
    end
  end
end
