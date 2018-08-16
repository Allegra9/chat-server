class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    if user.save
      # serialized_data = ActiveModelSerializers::Adapter::Json.new(
      #   UserSerializer.new(user)
      # ).serializable_hash
      #
      # head :ok
    end

  end

  private

  def users_params
    params.require(:conversation).permit(:name, :username, :password_digest)
  end

end
