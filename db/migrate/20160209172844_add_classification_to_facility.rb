class AddClassificationToFacility < ActiveRecord::Migration
  def change
    add_column :facilities, :Location_Descriptive_Name_Common_Name, :string
    add_column :facilities, :Classification, :string
  end
end
