class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
