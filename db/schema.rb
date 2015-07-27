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

ActiveRecord::Schema.define(version: 20150710194903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "place_services", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "service_type_id"
    t.string   "service_name"
    t.string   "service_short_description"
    t.string   "service_category"
    t.integer  "service_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "place_services", ["place_id"], name: "index_place_services_on_place_id", using: :btree
  add_index "place_services", ["service_type_id"], name: "index_place_services_on_service_type_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "coordinate_type"
    t.geometry "coordinates",     limit: {:srid=>0, :type=>"geometry"}
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "identifier"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "website_services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "place_id"
    t.string   "redirect_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "website_services", ["place_id"], name: "index_website_services_on_place_id", using: :btree

end
