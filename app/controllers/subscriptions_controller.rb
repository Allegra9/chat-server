class SubscriptionController < ApplicationController

  def create
    subscription = Subscription.create(conversation_id: params[:conversation_id], user_id: params[:user_id])
    if subscription.valid?
      render json: subscription
    else
      render json: {error: "SOMETHING WENT WRONG CREATING SUBSCRIPTION"}
    end
  end

  private

  def message_params
    params.require(:subscription).permit(:conversation_id, :user_id)
  end
end
