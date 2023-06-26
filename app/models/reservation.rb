class Reservation < ApplicationRecord
  validates :check_in_date, presence: true
  validates :check_out_date, presence: true
  validates :number_of_person, presence: true
end
