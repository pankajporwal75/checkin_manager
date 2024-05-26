class Room < ApplicationRecord
  enum status: { available: 'Available', checked_in: 'Checked In', not_clean: 'Not Clean', closed: 'Closed'}
  validates_presence_of :number
  belongs_to :category
end
