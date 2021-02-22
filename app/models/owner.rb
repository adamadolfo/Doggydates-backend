class Owner < ApplicationRecord
    has_many :dogs
    # has_many :matches
    # has_many :friends, :through => :matches

    has_many :sentConversations, foreign_key: :sender_id, class_name: "Conversation"
    has_many :contacts, through: :sentConversations

    has_many :receivedConversations, foreign_key: :recipient_id, class_name: "Conversation"
    has_many :inboxs, through: :receivedConversations
 

    has_many :requesting_invites, foreign_key: :requestor_id, class_name: "Match"
    has_many :friends, through: :requesting_invites

    has_many :receiving_invites, foreign_key: :friend_id, class_name: "Match"
    has_many :requestors, through: :receiving_invites

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



    def send_request_to(friend)
        match = Match.create(requestor_id: self.id, friend_id: friend.id)
    end
    
    def liked_by?(stranger)
        pending = self.receiving_invites.find_by(requestor_id: stranger.id, friend_id: self.id)
        if !pending
            return false
        elsif pending
            return true
        else
            return false
        end
      
    end

    def accept_request_from(owner)
        self.receiving_invites.find_by(requestor_id: owner.id).accept
    end

    def rejection(owner)
        self.liked_by?(owner) ? self.receiving_invites.find_by(requestor_id: owner.id, friend_id: self.id).destroy : nil
    end
    
    def get_matches
        friends_list = []
        Match.all.where("friend_id = ? or requestor_id = ?", self.id, self.id).where({accepted: true}).each_with_index { |match, index| 
            if match.requestor_id != self.id
               friends_list << Owner.find(match.requestor_id)
            else 
                friends_list <<  Owner.find(match.friend_id)
            end
        }
        friends_list
    end

    def ownersConvos
        Conversation.where("sender_id = :id", { id: self.id }).or(Conversation.where("recipient_id = :id", { id: self.id }))
    end
end
