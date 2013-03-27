class CreateCategorymenuitems < ActiveRecord::Migration
  def change
    create_table :categorymenuitems do |t|
      t.integer :category_id
      t.integer :menuitem_id
      t.string :description

      t.timestamps
    end
  end
end
