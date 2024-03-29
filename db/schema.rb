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

ActiveRecord::Schema.define(:version => 20130908000730) do

  create_table "abilities", :force => true do |t|
    t.integer  "crew_card_id"
    t.string   "textA"
    t.string   "textB"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "titleA"
    t.string   "titleB"
  end

  create_table "basic_cards", :force => true do |t|
    t.integer  "card_set_id"
    t.integer  "rarity"
    t.string   "background"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "icon_a"
    t.string   "icon_b"
    t.string   "icon_c"
    t.string   "name"
  end

  create_table "card_sets", :force => true do |t|
    t.string   "name"
    t.string   "icon"
    t.string   "image"
    t.date     "release"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "desc"
  end

  create_table "crew_cards", :force => true do |t|
    t.string   "name"
    t.integer  "pilot"
    t.integer  "engineer"
    t.integer  "gunner"
    t.integer  "basic_card_id"
    t.string   "image"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "flavor"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.string   "itype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
