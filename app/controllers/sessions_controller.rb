class SessionsController < ApplicationController

  def index
    redirect_to user_path(current_user.id) if logged_in?
  end

  def new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to root_path, error: "Incorrect email or password"
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def omniauth
    @user = User.from_omniauth(auth)
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
  
end
