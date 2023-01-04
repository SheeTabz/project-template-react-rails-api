class CreateBusRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :bus_routes do |t|
      t.string :From_location
      t.string :To_location
      t.integer :Price

      t.timestamps
    end
  end
end
