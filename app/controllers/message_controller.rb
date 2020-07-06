class MessageController < ApplicationController

    def new

    end

    def create
        @opinion = current_user.opinions.new(opinion_params)
        respond_to do |format|
            if @opinion.save
            format.html { redirect_to root_path, notice: 'Your Message was successfully sent!' }
            else
            format.html {redirect_to root_path, notice: "Sorry there was an error. Message not sent"}
            end
        end   
    end

    private

    def message_params
        params.require(:message).permit(:name, :email, :title, :message)
    end
end
