class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.create(params.require(:message).permit(:content))
    ActionCable.server.broadcast 'room_channel', content: @message.content if @message.save
  end
end
