class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :user_type, index: true, foreign_key: true, default: 1
  end
end
