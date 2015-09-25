class AddDetailToUser < ActiveRecord::Migration
  def change
    add_column :users, :sector, :string
    add_column :users, :languages, :string
    add_column :users, :computer_skills, :string
  end
end
