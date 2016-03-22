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

ActiveRecord::Schema.define(version: 20160321142425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "facilities", force: :cascade do |t|
    t.string   "facility_id"
    t.string   "official_station_name"
    t.string   "location_descriptive_name_common_name"
    t.string   "classification"
    t.string   "street_address"
    t.string   "suite_building_number"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "station_phone_number"
    t.string   "station_fax_number"
    t.string   "after_hours_phone_number"
    t.string   "pharmacy_phone_number"
    t.string   "enrollment_coordinator_phone_number"
    t.string   "patient_advocate_phone_number"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "monday_hours"
    t.string   "tuesday_hours"
    t.string   "wednesday_hours"
    t.string   "thursday_hours"
    t.string   "friday_hours"
    t.string   "saturday_hours"
    t.string   "sunday_hours"
    t.text     "hours_note"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "nca_facilities", force: :cascade do |t|
    t.string   "facility_id"
    t.string   "location_descriptive_name_common_name"
    t.string   "official_station_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "station_phone_number"
    t.string   "station_fax_number"
    t.string   "cemetery_type"
    t.string   "cemetery_operations"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "facility_id"
    t.string   "service_level_1"
    t.string   "service_level_2"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vba_facilities", force: :cascade do |t|
    t.string   "facility_id"
    t.string   "original_facility_id"
    t.string   "location_descriptive_name_common_name"
    t.string   "street_address"
    t.string   "suite_building_number"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "station_phone_number"
    t.string   "station_fax_number"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "monday_hours"
    t.string   "tuesday_hours"
    t.string   "wednesday_hours"
    t.string   "thursday_hours"
    t.string   "friday_hours"
    t.string   "saturday_hours"
    t.string   "sunday_hours"
    t.text     "hours_note"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "vba_services", force: :cascade do |t|
    t.string   "facility_id"
    t.string   "service_level_1"
    t.string   "service_level_2"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
