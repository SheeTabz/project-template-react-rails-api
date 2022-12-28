class Vehicle < ApplicationRecord
   # has_many :routes
    validates :departure_time, presence: true
    validates :arrival_time, presence: true
    validates :route_id, presence: true
    validates :seat_id, presence: true
    validates :sacco_id, presence: true
    validates :image, presence: true
    validates :no_of_seats, presence: true
end
