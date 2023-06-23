class RenameRoomPriceColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :room_price, :price
  end
end
