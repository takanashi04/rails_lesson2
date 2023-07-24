class RemoveReservationIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :reservation_id, :integger
  end
end
