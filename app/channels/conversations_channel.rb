class ConversationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    # conversation = Conversation.find(params[:id])
    # stream_for conversation
    stream_from "conversations_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
