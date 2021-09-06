class MessageController < ApplicationController
  def chat
    @message = Message.new
  end
end
