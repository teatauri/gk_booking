class Booking < ApplicationRecord
  has_many :booking_items 
  belongs_to :status
  validates :budget, presence: true
  validates :guests, presence: true
  validates :location, presence: true
  validates :email, presence: true
end
