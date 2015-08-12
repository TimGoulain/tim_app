class CreateSkillsUsers < ActiveRecord::Migration
  def change
    create_table :skills_users do |t|
      t.references :skill, index: true
      t.references :user, index: true
    end
  end
end
