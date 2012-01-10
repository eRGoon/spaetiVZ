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

ActiveRecord::Schema.define(:version => 20120110114441) do

  create_table "comments", :force => true do |t|
    t.integer  "sID"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "features", :force => true do |t|
    t.integer  "sID"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "sID"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", :force => true do |t|
    t.integer  "sID"
    t.integer  "points"
    t.integer  "ratings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaeti_features", :force => true do |t|
    t.integer  "spaeti_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaetis", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "number"
    t.string   "postal"
    t.string   "city"
    t.string   "district"
    t.string   "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
