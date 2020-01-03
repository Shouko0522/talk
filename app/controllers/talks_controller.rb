class TalksController < ApplicationController
  def list
    @chatroom = ChatRoom.all
  end

  def chatroom
    @chatroom= ChatRoom.find(params[:id])
    @message = Message.new
  end

  def send_message
    @chatroom= ChatRoom.find(params[:id])
    @message = Message.new(message_params)
    @message.chat_room = @chatroom
    @message.save

    redirect_to get_chatroom_path(@chatroom)
  end

  private

  def message_params
    params.require(:message).permit(:comment)
  end

end
