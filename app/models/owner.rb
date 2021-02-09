class Owner < ApplicationRecord
    has_many :dogs
    has_many :matches
    has_many :friends, :through => :matches

    has_many :swipe_connections, foreign_key: :feed_member_id, class_name: 'Swipe'
    has_many :swiping_owners, through: :swipe_connections

    has_many :feed_connections, foreign_key: :swiping_owner_id, class_name: 'Swipe'
    has_many :feed_members, through: :feed_connections


    has_secure_password
    validates :email, uniqueness: true


    def fill_feed
        filtered = Owner.where.not(email: self.email).each { |owner| Swipe.create(swiping_owner_id: self.id, feed_member_id: owner.id) }
    end


  
    def remove_from_feed(user_id)
        self.feed_connections.find_by(feed_member_id: user_id).delete
    end



end
