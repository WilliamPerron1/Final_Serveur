class Game < ApplicationRecord
    #belong_to :users mais pour chaque foreign key

    validates :creator_id, presence: true


    # les relations son pas bonne
    #belong_to 
    #tu 
end
