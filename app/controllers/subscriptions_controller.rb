class SubscriptionsController < ApplicationController

  def create
    byebug
    subscription = Subscription.create(conversation_id: params[:conversation_id], user_id: params[:user_id])
    if subscription.valid?
      conversation = Conversation.find(params[:conversation_id])
        # serialized_data = ActiveModelSerializers::Adapter::Json.new(
        #   ConversationSerializer.new(conversation)
        # ).serializable_hash
        # ConversationChannel.broadcast_to(conversation, )
        ActionCable.server.broadcast 'conversations_channel', {type: "ADDING_USER", new_user: User.find(params[:user_id]), conversation: conversation }
        head :ok
    else
      render json: {error: "SOMETHING WENT WRONG CREATING SUBSCRIPTION"}
    end
  end

  private

  def message_params
    params.require(:subscription).permit(:conversation_id, :user_id)
  end
end
