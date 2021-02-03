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
            @owner = Owner.new(
                email: params[:email],
                password: params[:password]
            )
                
            if @owner.save
                session[:owner_id] = @owner.id
                render json: @owner.to_json(include: [:dogs] )
            end
    end

    def update 

        @owner = Owner.find(params[:id])
     
        if @owner
            @owner.update(
                name: params[:name], 
                age: params[:age], 
                age_preference: params[:age_preference], 
                friendship_type: params[:friendship_type],
                owner_exp: params[:owner_exp], 
                gender_preference: params[:gender_preference],
                looking_for: params[:looking_for],
                city: params[:city],
                state: params[:state],
                willing_mile_radius: params[:willing_mile_radius],
                image_url: params[:image_url]

            )
            render json: @owner.to_json(include: [:dogs] )
        else
            render json: {status: "fail"}
        end
    end

    def feed
        @owner = Owner.find(params[:id])
        render json: @owner.feed.to_json(include: [:dogs] ) 
    end

    def remove
        @owner = Owner.find(params[:id])
        @owner.remove_from_feed(params[:liked])
        render json: @owner.feed.to_json(include: [:dogs] )
    end
end
