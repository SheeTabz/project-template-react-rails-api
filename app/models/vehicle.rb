class Vehicle < ApplicationRecord
    has_many :routes
    validates :route_id, presence:true
    validates :seat_id, presence:true
    validates :sacco_id, presence:true
    validates :image
    validates :time
end
