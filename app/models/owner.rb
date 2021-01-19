class Owner < ApplicationRecord
    has_many :dogs
    has_secure_password
    validates :email, uniqueness: true

    def feed
        feed = Owner.where.not(email: self.email)
        return feed
    end



end
