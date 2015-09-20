class AddFirstNameToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :first_name, :string
  end
end
