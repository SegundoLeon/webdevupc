class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.string :plate
      t.string :status
      t.references :profile, index: true, foreign_key: true
      t.references :vehicle_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
