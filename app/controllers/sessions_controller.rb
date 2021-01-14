class SessionsController < ApplicationController

    def login
        @owner = Owner.find_by(email: params[:email])
        .try(:authenticate, params[:password])
        if @owner
            session[:user_id] = @user.id
            render :json => @user.to_json(include: [:dogs])
        end
    end
    

end
