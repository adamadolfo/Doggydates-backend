class Message < ApplicationRecord
    validates_presence_of :body, :conversation_id, :user_id

    def message_time
     
    end

end