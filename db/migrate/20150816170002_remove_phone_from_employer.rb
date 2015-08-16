class RemovePhoneFromEmployer < ActiveRecord::Migration
  def up
    remove_column :employers, :phone
    remove_column :employers, :email  
  end
  def down
    add_column :employers, :phone, :integer
    add_column :employers, :email, :string  
  end
end
