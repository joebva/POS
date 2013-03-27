class CreateGroupoptions < ActiveRecord::Migration
  def change
    create_table :groupoptions do |t|
      t.integer :group_id
      t.integer :option_id
      t.decimal :price

      t.timestamps
    end
  end
end
