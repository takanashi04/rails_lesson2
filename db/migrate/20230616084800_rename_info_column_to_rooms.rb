class RenameInfoColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :info, :room_content
  end
end
