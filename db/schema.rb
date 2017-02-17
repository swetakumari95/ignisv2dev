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

ActiveRecord::Schema.define(version: 20170217235058) do

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.integer  "rrange_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rrange_id"], name: "index_districts_on_rrange_id"
  end

  create_table "fire_stations", force: :cascade do |t|
    t.string   "name"
    t.string   "sanction_number"
    t.string   "address"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.integer  "phone_number"
    t.decimal  "land_area"
    t.string   "fs_class"
    t.date     "establishment_date"
    t.decimal  "establishment_cost"
    t.integer  "sanctioned_strength"
    t.integer  "actual_strength"
    t.boolean  "taluk_bit"
    t.string   "status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "hoblis", force: :cascade do |t|
    t.string   "name"
    t.integer  "taluk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taluk_id"], name: "index_hoblis_on_taluk_id"
  end

  create_table "rranges", force: :cascade do |t|
    t.string   "name"
    t.integer  "zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["zone_id"], name: "index_rranges_on_zone_id"
  end

  create_table "taluks", force: :cascade do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["district_id"], name: "index_taluks_on_district_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "registration_number"
    t.string   "make"
    t.string   "model"
    t.integer  "mfg_year"
    t.decimal  "cost"
    t.date     "purchase_date"
    t.string   "chassis_number"
    t.string   "engine_number"
    t.decimal  "fuel_tank_capacity"
    t.string   "fabricator"
    t.string   "type"
    t.string   "tax_card"
    t.string   "sanction_order_no"
    t.date     "sanction_date"
    t.decimal  "actual_mileage"
    t.decimal  "proposed_mileage"
    t.decimal  "kilometers_run"
    t.decimal  "fuel_consumed"
    t.integer  "fire_station_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["fire_station_id"], name: "index_vehicles_on_fire_station_id"
  end

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
