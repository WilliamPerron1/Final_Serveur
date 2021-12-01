class GameController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :verify_authenticity_token
    def index
        @games_create = current_user.created
        @games_played = current_user.played
    end

    def created

    end

    def formedit
        @user = current_user
    end

    def editprofil 
        @user = current_user
        @user.update(email: params[:email], password: params[:password])
        redirect_to '/game'
       
       
    end
end