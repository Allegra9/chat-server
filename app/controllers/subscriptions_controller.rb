class SubscriptionsController < ApplicationController

  def create
    if !Subscription.find_by(conversation_id: params[:conversation_id], user_id: params[:user_id])
      subscription = Subscription.new(conversation_id: params[:conversation_id], user_id: params[:user_id])
      if subscription.save
        conversation = Conversation.find(params[:conversation_id])
        MessagesChannel.broadcast_to(conversation, {type: "ADDING_USER", new_user: User.find(params[:user_id]), conversation: conversation})
        render json: conversation
      else
        render json: {error: "SOMETHING WENT WRONG CREATING SUBSCRIPTION"}
      end
    else
      render json: {error: "ALREADY SUBSCRIBED SUBSCRIPTION"}
  end
  end

  private

  def message_params
    params.require(:subscription).permit(:conversation_id, :user_id)
  end
end
