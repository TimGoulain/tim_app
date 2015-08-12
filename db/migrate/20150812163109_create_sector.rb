class CreateSector < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :code
    end
  end
end
