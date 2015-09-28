class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.integer :note
      t.string :comment
      t.string :recipient_email
      t.string :authentication_token
      t.references :travel, index: true
    end
  end
end
