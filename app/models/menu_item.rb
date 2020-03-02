class MenuItem < ApplicationRecord
    has_many :booking_items
    has_many :bookings, through: :booking_items 
end
