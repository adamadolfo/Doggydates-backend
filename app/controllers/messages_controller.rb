class MessagesController < ApplicationController
    def create
        byebug
        Message.create()
    end
end
