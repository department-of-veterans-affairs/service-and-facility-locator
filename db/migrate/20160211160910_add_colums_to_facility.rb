class AddColumsToFacility < ActiveRecord::Migration
  def change
    add_column :facilities, :Street_Address, :string
    add_column :facilities, :Suite_Building_Number, :string
    add_column :facilities, :City, :string
    add_column :facilities, :State, :string
    add_column :facilities, :Zip_Code, :integer
    add_column :facilities, :Station_Phone_Number, :string
    add_column :facilities, :Station_Fax_Number, :string
    add_column :facilities, :After_Hours_Phone_Number, :string
    add_column :facilities, :Pharmacy_Phone_Number, :string
    add_column :facilities, :Enrollment_Coordinator_Phone_Number, :string
    add_column :facilities, :Patient_Advocate_Phone_Number, :string
    add_column :facilities, :Latitude, :decimal
    add_column :facilities, :Longitude, :decimal
    add_column :facilities, :Monday_Hours, :string
    add_column :facilities, :Tuesday_Hours, :string
    add_column :facilities, :Wednesday_Hours, :string
    add_column :facilities, :Thursday_Hours, :string
    add_column :facilities, :Friday_Hours, :string
    add_column :facilities, :Saturday_Hours, :string
    add_column :facilities, :Sunday_Hours, :string
    add_column :facilities, :Hours_Note, :text
  end
end
