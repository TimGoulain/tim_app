class AddAuthenticationTokenToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :authentication_token, :string
  end
end
