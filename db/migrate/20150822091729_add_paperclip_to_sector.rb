class AddPaperclipToSector < ActiveRecord::Migration
  def change
    add_attachment :sectors, :image
  end
end
