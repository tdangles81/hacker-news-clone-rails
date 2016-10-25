class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by_username(params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      @errors = ["Username and Password don't match."]
      render :new
    end
  end

  def destroy
  end
end
