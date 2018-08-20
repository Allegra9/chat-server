class ApplicationController < ActionController::API

  def current_user
    if(params[:user_id])
      current_user = User.find(params[:user_id])
    end
  end

end
