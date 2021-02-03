class Owner < ApplicationRecord
    has_many :dogs
    has_many :matches
    has_many :friends, :through => :matches
    has_secure_password
    validates :email, uniqueness: true

    def feed
        feed = Owner.where.not(email: self.email)
        return feed
    end



end
