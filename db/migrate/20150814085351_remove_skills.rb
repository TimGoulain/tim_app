class RemoveSkills < ActiveRecord::Migration
  def up
    drop_table :skills
    drop_table :skills_users
    add_column :users, :skills, :text
  end
  
  def down
    remove_column :users, :skills
  end
end
