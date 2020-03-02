class Booking < ApplicationRecord
  has_many :booking_items 
  belongs_to :status
  belongs_to :admin
end
