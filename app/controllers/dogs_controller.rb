class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog
    end

    def create
        @dog = Dog.new(
            name: params[:name],
            breed: params[:breed],
            gender: params[:gender],
            gets_along_with: params[:gets_along_with],
            temperament: params[:temperament],
            dominate_submissive: params[:dominate_submissive],
            leash: params[:leash],
            one_on_one_group: params[:one_on_one_group],
            enjoys: params[:enjoys],
            dislikes: params[:dislikes],
            adopted_breeder: params[:adopted_breeder],
            owner_id: params[:owner_id],
            age: params[:age]
        )
            
        if @dog.save
            @owner = params[:owner_id].id
            render json: @owner.to_json(include: [:dogs] )
        end
end
end
