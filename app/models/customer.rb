class Customer < ApplicationRecord
    #belongs_to :admin
    validates :name, presence: true
    validates :email, presence: true

    has_secure_password
    validates :password,
    length: { minimum: 6 },
     if:  -> { new_record? || !password.nil? }

   # validates :admin_id, presence:true
end
