class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :contact
      t.string :email
      t.string :password


      t.timestamps
    end
  end
end
