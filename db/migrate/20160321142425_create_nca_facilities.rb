class CreateNcaFacilities < ActiveRecord::Migration
  def change
    create_table :nca_facilities do |t|
      t.string :facility_id
      t.string :location_descriptive_name_common_name
      t.string :official_station_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :station_phone_number
      t.string :station_fax_number
      t.string :cemetery_type
      t.string :cemetery_operations
      t.decimal :latitude
      t.decimal :longitude
      
      t.timestamps null: false
    end
  end
end
