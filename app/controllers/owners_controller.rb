class OwnersController < ApplicationController
    def index
        @owners = Owner.all
        render json: @owners.to_json(include: [:dogs] )
    end

    def show
        @owner = Owner.find(params[:id])
        render json: @owner.to_json(include: [:dogs] )
    end

    def create
        byebug
            # @owner = Owner.new(
            #     params.require(:owner).permit(:email, :password)
            #     )
            # if @owner.save
            #     session[:owner_id] = @owner.id
            #     render json: @owner.to_json(include: [:dogs] )

            # end
    end

    def update 

        @owner = owner.find(params[:owner_id])
        if @owner
            @owner.update()
            render json: @owner.to_json(include: [:dogs] ) 
        end
    end
end
