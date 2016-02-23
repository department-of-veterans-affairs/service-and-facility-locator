class CreateService < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :Facility_ID
      t.string :Service_Level_1
      t.string :Service_Level_2
      
      t.timestamps null: false
    end
  end
end
