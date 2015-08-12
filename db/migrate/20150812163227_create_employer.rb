class CreateEmployer < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :location
      t.integer :phone
      t.string :email
    end
  end
end
