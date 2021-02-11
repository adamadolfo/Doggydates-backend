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
            if @owner.save!
                session[:owner_id] = @owner.id
                @owner.fill_feed
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
        render json: @owner.feed_members.to_json(include: [:dogs] ) 
    end

    def swipe
        @owner = Owner.find(params[:id])
        @clicked = Owner.find(params[:clicked])
        @match = false
        if params[:option] = "yes"
            if @owner.liked_by?(@clicked)
                @owner.accept_request_from(@clicked)
                @match = true
            else 
                @owner.send_request_to(@clicked)
            end
        else
            @owner.rejection(@clicked)
            @match = false
        end
        @owner.remove_from_feed(params[:clicked])
        render json: { feed: @owner.feed_members.to_json(include: [:dogs] ),
                        match: @match}
        
    end

    def accepted
        @owner = Owner.find(params[:id])
        render json: @owner.get_matches
    end
end
