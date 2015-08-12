class CreateJob < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.text :description
      t.string :location
      t.datetime :started_at
      t.datetime :ended_at
      t.references :user, index: true
      t.references :employer, index: true
      t.references :sector, index: true
    end
  end
end
