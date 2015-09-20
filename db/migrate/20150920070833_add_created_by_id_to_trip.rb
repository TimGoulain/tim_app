class AddCreatedByIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :created_by_id, :integer
  end
end
