class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Expose this method to the view
  helper_method :current_user

  # Memoized for performance only hit DB once
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def check_for_authorized_user
    unless current_user
      redirect_to login_path
    end
  end
end
