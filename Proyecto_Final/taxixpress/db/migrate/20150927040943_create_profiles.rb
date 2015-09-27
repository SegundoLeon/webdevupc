class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :mobilephone
      t.references :user_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
