class CreateTrip < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :departure_point
      t.string :arrival_point
      t.date :started_at
      t.date :ended_at
      t.boolean :flexible_date
      t.string :cotraveller
      t.references :user, index: true
      t.integer :phone
    end
  end
end
