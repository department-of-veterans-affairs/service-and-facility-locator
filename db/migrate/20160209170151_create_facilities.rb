class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :ID
      t.string :Official_Station_Name

      t.timestamps null: false
    end
  end
end
