class DropTableMicroposts < ActiveRecord::Migration
  def up
    drop_table :microposts
  end
  
  def down
    create_table "microposts", force: true do |t|
      t.text     "content"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
