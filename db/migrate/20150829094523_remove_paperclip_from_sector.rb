class RemovePaperclipFromSector < ActiveRecord::Migration
  def up
    remove_attachment :sectors, :image
  end
  def down
    add_attachment :sectors, :image
  end
end
