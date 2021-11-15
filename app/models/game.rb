class Game < ApplicationRecord
    has_many :users

    validates :creator_id, presence: true
end
