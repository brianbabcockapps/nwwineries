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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160102030133) do

  create_table "active_wineries", force: :cascade do |t|
    t.integer  "winery_serial_num"
    t.integer  "winery_id"
    t.boolean  "active"
    t.date     "last_active"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "mains", force: :cascade do |t|
    t.string   "title"
    t.text     "paragraph"
    t.string   "graphic"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "graphic_file_name"
    t.string   "graphic_content_type"
    t.integer  "graphic_file_size"
    t.datetime "graphic_updated_at"
  end

  create_table "page_trackers", force: :cascade do |t|
    t.string   "previous_url"
    t.integer  "user_tracker_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "page_trackers", ["user_tracker_id", "created_at"], name: "index_page_trackers_on_user_tracker_id_and_created_at"
  add_index "page_trackers", ["user_tracker_id"], name: "index_page_trackers_on_user_tracker_id"

  create_table "user_tracker_pages", force: :cascade do |t|
    t.string   "previousURL"
    t.integer  "user_tracker_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "user_tracker_pages", ["user_tracker_id"], name: "index_user_tracker_pages_on_user_tracker_id"

  create_table "user_trackers", force: :cascade do |t|
    t.string   "ipAddress"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "full_address"
    t.string   "country"
    t.string   "provider"
    t.string   "browser"
    t.string   "browser_version"
    t.string   "os"
    t.string   "device"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "wineries", force: :cascade do |t|
    t.string   "name"
    t.integer  "order"
    t.string   "price_range"
    t.string   "reigon"
    t.string   "tasting_room_hours"
    t.string   "seasonal"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.decimal  "tasting_room_cost"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "description"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "website"
    t.boolean  "active"
  end

  create_table "winery_histories", force: :cascade do |t|
    t.string   "name"
    t.integer  "order"
    t.string   "price_range"
    t.string   "reigon"
    t.string   "tasting_room_hours"
    t.string   "seasonal"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "longitude"
    t.string   "latitude"
    t.decimal  "tasting_room_cost"
    t.string   "website"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "winery_id"
    t.text     "description"
  end

end
