class ChangeDatetimesIntoDate < ActiveRecord::Migration
  def up
    change_column :users, :birth, :date
    change_column :jobs, :started_at, :date
    change_column :jobs, :ended_at, :date
  end

  def down
    change_column :users, :birth, :datetime
    change_column :jobs, :started_at, :datetime
    change_column :jobs, :ended_at, :datetime
  end
end
