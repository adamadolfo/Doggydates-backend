class Conversation < ApplicationRecord
    belongs_to :sender, :foreign_key => :sender_id, class_name: ‘Owner’
    belongs_to :recipient, :foreign_key => :recipient_id, class_name: ‘Owner’

    has_many :messages, dependent: :destroy

    validates_uniqueness_of :sender_id, :scope => :recipient_id

    scope :between, -> (sender_id,recipient_id) do
        Conversation.where("sender_id = :sender_id and recipient_id = :recipient_id", { sender_id: sender_id, recipient_id: recipient_id }).or(Conversation.where("sender_id = :recipient_id and recipient_id = :sender_id", { sender_id: sender_id, recipient_id: recipient_id }))
        end
end