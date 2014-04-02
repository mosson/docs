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

ActiveRecord::Schema.define(:version => 20140401070530) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "anchor_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "categories", ["anchor_name"], :name => "index_categories_on_anchor_name", :unique => true

  create_table "docs", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entries", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "anchor_name"
    t.text     "explanation"
    t.text     "ruby"
    t.text     "curl"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "entries", ["anchor_name"], :name => "index_entries_on_anchor_name", :unique => true

  create_table "variables", :force => true do |t|
    t.integer  "entry_id"
    t.string   "used_variables"
    t.string   "explanation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "variables", ["entry_id", "used_variables"], :name => "index_variables_on_entry_id_and_used_variables", :unique => true

end