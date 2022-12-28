class Route < ApplicationRecord 
   # belongs_to  :vehicle 
    validates :To_location
    validates :From_location
    validates :Price, presence: true

end
