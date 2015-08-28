class AddCityToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :city, :string
  end
end
