class CreateService < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :facility_id
      t.string :service_level_1
      t.string :service_level_2
      
      t.timestamps null: false
    end
  end
end
