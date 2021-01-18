class SessionsController < ApplicationController

    def login
        
        @owner = Owner.find_by(email: params[:email])
        .try(:authenticate, params[:password])
        if @owner
            render json: @owner.to_json(include: [:dogs] )
        end
    end
    

end
