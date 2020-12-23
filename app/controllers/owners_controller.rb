class OwnersController < ApplicationController
    def index
        @owners = Owner.all
        render json: @owners
    end

    def show
        @owner = Owner.find(params[:id])
        render json: @owner
    end

    def create
        @owner = Owner.new()
        if @owner.save
            session[:owner_id] = @owner.id
            render json: @owner
        end
    end

    def update 

        @owner = owner.find(params[:owner_id])
        if @owner
            @owner.update()
            render json: @owner
        end
    end
end
