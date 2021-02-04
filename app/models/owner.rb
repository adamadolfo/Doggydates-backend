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

  


    ## create the feed of users to like or dislike.
    ## this should never include the logged in user and in the future will make this 
    ## only be users in the area instead of all owners like it currently is
    # def feed
    #     feed = Owner.where.not(email: self.email)
    #     return feed
    # end


    # ## This is a temporary removal from feed. It should reset to the full feed. 
    # ## To make this a permanent action I would need to make an owner have many owners in its feed and remove from that relationship.
    # def remove_from_feed(user_id)
    #    filtered = self.feed.where.not(id: user_id)
    #    return filtered
    # end



end
