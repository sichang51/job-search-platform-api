class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_phn_num, :string
    add_column :users, :user_bio, :text
    add_column :users, :user_linkedin_url, :string
    add_column :users, :user_twitter_handle, :string
    add_column :users, :user_website_url, :string
    add_column :users, :user_resume_url, :string
    add_column :users, :user_github_url, :string
    add_column :users, :user_photo_url, :string
  end
end
