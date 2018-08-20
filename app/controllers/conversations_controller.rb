class ConversationsController < ApplicationController

  def index
    conversations = Conversation.all
    render json: conversations
  end

  def create
    conversation = Conversation.new(conversation_params)
    if conversation.save
      current_user.conversations << conversation
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ConversationSerializer.new(conversation)
      ).serializable_hash
      ActionCable.server.broadcast 'conversations_channel', serialized_data
      head :ok
    end
  end

  def user_conversations
    if(current_user)
      render json: current_user.conversations
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title)
  end

end
