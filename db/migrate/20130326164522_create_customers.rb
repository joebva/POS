class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.string :deliveryremarks
      t.string :geocode

      t.timestamps
    end
  end
end
