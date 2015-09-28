class AddContactPointToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :contact_point, :string
  end
end
