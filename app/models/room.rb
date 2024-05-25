class Room < ApplicationRecord
  validates_presence_of :number
  belongs_to :category
end
