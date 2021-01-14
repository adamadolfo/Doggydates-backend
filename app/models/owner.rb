class Owner < ApplicationRecord
    has_many :dogs
    has_secure_password
    validates :email, uniqueness: true

    


end
