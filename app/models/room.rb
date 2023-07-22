class Room < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :price, presence: true
  validates :address, presence: true

  mount_uploader :avatar_path, AvatarUploader

  has_many :reservations
  belongs_to :user
end
