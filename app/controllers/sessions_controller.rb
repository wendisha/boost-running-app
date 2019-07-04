class SessionsController < ApplicationController

  def index

  end

  def new
    
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete(@user)
    redirect_to root_path
  end
  
end
