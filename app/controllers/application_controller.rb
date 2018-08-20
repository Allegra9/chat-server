class ApplicationController < ActionController::API


  def current_user
    if(params[:id])
      current_user = User.find(params[:id])
    end
  end


end
