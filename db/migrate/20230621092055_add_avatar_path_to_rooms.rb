class AddAvatarPathToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :avatar_path, :string
  end
end
