class CreateDistrits < ActiveRecord::Migration
  def change
    create_table :distrits do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
