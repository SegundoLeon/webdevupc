class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.references :user, index: true, foreign_key: true
      t.references :from_address
      t.references :to_address
      t.datetime :date_time
      t.integer :payment
      t.integer :passengers
      t.references :vehicle_type, index: true, foreign_key: true
      t.references :payment_method, index: true, foreign_key: true
      t.string :service_code
      t.references :vehicle, index: true, foreign_key: true
      t.integer :rate
      t.text :experience
      t.string :status

      t.timestamps null: false
    end
  end
end
