class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :position
      t.references :employer, index: true
      t.date :started_at
      t.date :ended_at
      t.references :sector, index: true
      t.references :created_by, index: true

      t.timestamps
    end
  end
end
