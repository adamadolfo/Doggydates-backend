class Message < ApplicationRecord
    validates_presence_of :body, :conversation_id, :owner_id

    

end