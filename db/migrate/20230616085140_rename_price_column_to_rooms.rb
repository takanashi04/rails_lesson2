class RenamePriceColumnToRooms < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :price, :room_price
  end
end
