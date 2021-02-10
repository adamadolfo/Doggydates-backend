class Match < ApplicationRecord
    belongs_to :friend, :class_name => "Owner"
    belongs_to :requestor, :class_name => "Owner"

    def accept
        update(accepted: true)
    end
end
