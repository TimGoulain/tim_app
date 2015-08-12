class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :country, :string
    add_column :users, :driving_licence, :boolean
    add_column :users, :linkedin_url, :string
    add_column :users, :about_me, :text
    add_column :users, :current_location, :string
    add_column :users, :headline, :string
  end
end
