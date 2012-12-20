class ApplicationController < ActionController::Base
  protect_from_forgery
  
	def require_user
	  redirect_to login_url, alert: "Not authorized" if current_user.nil?
	end

  def require_admin
    redirect_to login_url, alert: "Not authorized" unless current_user && current_user.admin?
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
end
