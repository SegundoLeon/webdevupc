class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :estimated_cost
      t.references :from_district
      t.references :to_district

      t.timestamps null: false
    end
  end
end
