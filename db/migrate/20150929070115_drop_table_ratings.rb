class DropTableRatings < ActiveRecord::Migration
  def up
    drop_table :ratings
  end

  def down
    create_table "ratings", force: true do |t|
      t.integer  "recommendation_id"
      t.integer  "job_id"
      t.integer  "score"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end