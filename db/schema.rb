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

ActiveRecord::Schema.define(:version => 20130105072855) do

  create_table "come_in_bills", :force => true do |t|
    t.decimal  "money"
    t.string   "remarks"
    t.date     "billdate"
    t.integer  "come_in_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "come_in_bills", ["come_in_type_id"], :name => "index_come_in_bills_on_come_in_type_id"

  create_table "come_in_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cost_bills", :force => true do |t|
    t.decimal  "money"
    t.string   "remarks"
    t.date     "billdate"
    t.integer  "cost_type_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "cost_bills", ["cost_type_id"], :name => "index_cost_bills_on_cost_type_id"

  create_table "cost_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
