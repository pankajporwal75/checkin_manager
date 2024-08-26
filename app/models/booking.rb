class Booking < ApplicationRecord
  belongs_to :customer

  has_many :room_bookings, dependent: :destroy
  has_many :rooms, through: :room_bookings
end
