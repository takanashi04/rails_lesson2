class RenameRoomContentColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :room_content, :content
  end
end
