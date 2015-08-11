class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :job, :string
    add_column :users, :phone, :integer
    add_column :users, :competencies, :string
  end
end
