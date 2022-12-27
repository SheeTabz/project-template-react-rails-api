class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.integer :id
      t.string :From
      t.string :To
      t.string :Price
      t.timestamps
    end
  end
end
