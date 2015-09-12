class CreateTravel < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :visit
      t.string :departure_point
      t.string :arrival_point
      t.date :started_at
      t.date :ended_at
      t.string :cotraveller
      t.string :memory
      t.integer :score
      t.string :authentication_token
      t.references :user, index: true
    end
  end
end
