# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130327180850) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categorymenuitems", :force => true do |t|
    t.integer  "category_id"
    t.integer  "menuitem_id"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "address"
    t.string   "deliveryremarks"
    t.string   "geocode"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "groupoptions", :force => true do |t|
    t.integer  "group_id"
    t.integer  "option_id"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "select"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups_menuitems", :force => true do |t|
    t.integer "group_id"
    t.integer "menuitem_id"
  end

  create_table "lineitems", :force => true do |t|
    t.integer  "menuitem_id"
    t.integer  "order_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "cart_id"
  end

  add_index "lineitems", ["menuitem_id"], :name => "index_lineitems_on_menuitem_id"
  add_index "lineitems", ["order_id"], :name => "index_lineitems_on_order_id"

  create_table "menuitems", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.integer  "group1"
    t.integer  "group2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "options", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "phone_number"
    t.string   "address"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "customer_id"
  end

end
