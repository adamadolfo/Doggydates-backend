class MatchesController < ApplicationController
    def create
        Match.create(owner_id: params[:owner_id], friend_id: params[:friend_id])
    end

    def destroy

    end
end
