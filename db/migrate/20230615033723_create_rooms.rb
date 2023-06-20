class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :info
      t.decimal :price
      t.string :address

      t.timestamps
    end
  end
end
