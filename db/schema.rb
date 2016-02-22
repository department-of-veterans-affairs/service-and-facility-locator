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

ActiveRecord::Schema.define(version: 20160222141355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "facilities", force: :cascade do |t|
    t.string   "ID"
    t.string   "Official_Station_Name"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "Location_Descriptive_Name_Common_Name"
    t.string   "Classification"
    t.string   "Street_Address"
    t.string   "Suite_Building_Number"
    t.string   "City"
    t.string   "State"
    t.integer  "Zip_Code"
    t.string   "Station_Phone_Number"
    t.string   "Station_Fax_Number"
    t.string   "After_Hours_Phone_Number"
    t.string   "Pharmacy_Phone_Number"
    t.string   "Enrollment_Coordinator_Phone_Number"
    t.string   "Patient_Advocate_Phone_Number"
    t.decimal  "Latitude"
    t.decimal  "Longitude"
    t.string   "Monday_Hours"
    t.string   "Tuesday_Hours"
    t.string   "Wednesday_Hours"
    t.string   "Thursday_Hours"
    t.string   "Friday_Hours"
    t.string   "Saturday_Hours"
    t.string   "Sunday_Hours"
    t.text     "Hours_Note"
  end

  create_table "services", force: :cascade do |t|
    t.string "Facility_ID"
    t.string "Service_Level_1"
    t.string "Service_Level_2"
  end

end
