class SessionsController < ApplicationController

  def new
    "bullshit"
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user && @user.authenticate(params[:password])
      p @user
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
