class AddMobilephoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobilephone, :numeric
    add_column :users, :phone, :numeric
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :address, :string
    add_column :users, :marital_status, :string
    add_column :users, :company, :string
  end
end
