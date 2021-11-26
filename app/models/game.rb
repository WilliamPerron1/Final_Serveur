class Game < ApplicationRecord
    #belong_to :users mais pour chaque foreign key

    validates :creator_id, presence: true

    belong_to :creator, class_name 'user', foreign_key 'creator_id'
    belong_to :opponent, class_name 'user', foreign_key 'opponent_id', optional: true
    belong_to :winner, class_name 'user', foreign_key 'winner_id', optional: true
    belong_to :player_turn, class_name 'user', foreign_key 'player_turn_id', optional: true


    # les relations son pas bonne
    #belong_to 
    #tu 
end
