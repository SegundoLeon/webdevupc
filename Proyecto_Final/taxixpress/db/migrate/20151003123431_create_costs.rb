class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :estimated_cost
      t.references :from_distrit
      t.references :to_distrit

      t.timestamps null: false
    end
  end
end
