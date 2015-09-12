class DropTableIdeas < ActiveRecord::Migration
  def up
    drop_table :ideas
  end
  
  def down
    create_table "ideas", force: true do |t|
      t.string   "name"
      t.text     "description"
      t.string   "picture"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
