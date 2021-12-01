class GameController < ApplicationController
    before_action :authenticate_user!
    def index
        @games_create = current_user.created
        @games_played = current_user.played
    end

    def created
        
    end
end