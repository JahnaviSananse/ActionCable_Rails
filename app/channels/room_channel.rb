class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'root_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
