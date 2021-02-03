class Match < ApplicationRecord
    belongs_to :owner
    belongs_to :friend, :class_name => "owner"
end
