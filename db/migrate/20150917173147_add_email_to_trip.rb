class AddEmailToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :email, :string
  end
end
