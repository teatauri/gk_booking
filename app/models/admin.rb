class Admin < ApplicationRecord
    has_many :bookings 
    has_many :booking_items, through: :bookings 
end
