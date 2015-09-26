class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :recommendation, index: true
      t.references :job, index: true
      t.integer :score

      t.timestamps
    end
  end
end
