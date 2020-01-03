class TalksController < ApplicationController
  def list
    @chatroom = ChatRoom.all
  end

  def chatroom
    @chatroom= ChatRoom.find(params[:id])
  end

  def update
    @message = Message.find(params[:id])
    @message.update(message_params)
    # {}

    # no need for app/views/restaurants/update.html.erb
    redirect_to messages_path
  end

  private

  def message_params
    params.require(:message).permit(:title, :details)
  end

end
