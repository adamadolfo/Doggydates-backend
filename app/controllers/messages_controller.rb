class MessagesController < ApplicationController


    def create
       
        @conversation = Conversation.find(params[:conversation_id])
        @message = Message.create(conversation_id: @conversation.id, body: params[:body], owner_id: params[:owner_id])

        render json: @conversation.to_json(include: [:messages] )
    end
end
