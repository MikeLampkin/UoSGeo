class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.active? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      render 'new', :flash => "Email or password is invalid."
    end
	end
  
  def token
    session[:post_id] = Posts.find_by_token(params[:token]).id if params[:token]
    
    redirect_to Posts.find(session[:post_id])
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
