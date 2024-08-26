class Room < ApplicationRecord
  enum status: { available: 'Available', checked_in: 'Checked In', not_clean: 'Not Clean', closed: 'Closed'}
  validates_presence_of :number
  belongs_to :category
  belongs_to :customer, optional: true
  has_many :room_bookings, dependent: :destroy
  has_many :bookings, through: :room_bookings
end
