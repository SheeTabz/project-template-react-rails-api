class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string  :vehicle_name
      t.integer :route_id
      t.string  :departure_time 
      t.string  :arrival_time
      t.integer :no_of_seats
   
      t.integer :sacco_id
      t.string  :image


      t.timestamps
    end
  end
end
