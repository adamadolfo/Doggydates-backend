class Swipe < ApplicationRecord

    belongs_to :swiping_owner, class_name: "Owner"
    belongs_to :feed_member, class_name: "Owner"

    validates :feed_member_id, presence: true
    validates :swiping_owner_id, presence: true

end
