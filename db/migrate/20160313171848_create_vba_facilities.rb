class CreateVbaFacilities < ActiveRecord::Migration
  def change
    create_table :vba_facilities do |t|
      t.string :facility_id
      t.string :original_facility_id
      t.string :location_descriptive_name_common_name
      t.string :street_address
      t.string :suite_building_number
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :station_phone_number
      t.string :station_fax_number
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
