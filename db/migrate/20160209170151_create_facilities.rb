class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :facility_id
      t.string :official_station_name
      t.string :location_descriptive_name_common_name
      t.string :classification
      t.string :street_address
      t.string :suite_building_number
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :station_phone_number
      t.string :station_fax_number
      t.string :after_hours_phone_number
      t.string :pharmacy_phone_number
      t.string :enrollment_coordinator_phone_number
      t.string :patient_advocate_phone_number
      t.decimal :latitude
      t.decimal :longitude
      t.string :monday_hours
      t.string :tuesday_hours
      t.string :wednesday_hours
      t.string :thursday_hours
      t.string :friday_hours
      t.string :saturday_hours
      t.string :sunday_hours
      t.text :hours_note

      t.timestamps null: false
    end
  end
end
