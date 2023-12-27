class AddUserNameColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_fname, :string
    add_column :users, :user_lname, :string
  end
end
