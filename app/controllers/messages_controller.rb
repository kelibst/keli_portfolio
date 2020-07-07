class MessagesController < ApplicationController

    def new

    end

    def create
        @message = Message.new(message_params)
        respond_to do |format|
            if @message.save
            format.html { redirect_to root_path, notice: 'Your Message was successfully sent!' }
            else
            format.html {redirect_to root_path, notice: "Sorry there was an error. Message not sent"}
            end
        end   
    end

    private

    def message_params
        params.require(:message).permit(:name, :email, :title, :description)
    end
end
