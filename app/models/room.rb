class Room < ApplicationRecord
  validates :room_name, presence: true
  validates :room_content, presence: true
  validates :room_price, presence: true
  validates :address, presence: true

  mount_uploader :avatar_path, AvatarUploader
end
