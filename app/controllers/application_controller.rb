class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  
  def validate_session
    if !logged_in?
      redirect_to root_path
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
