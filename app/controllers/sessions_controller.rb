class SessionsController < ApplicationController
  def new
    # @user = User.new
  end

  def create
    # params["user"]["email"] # => "john@gmail.com"
    @user = User.find_by(email: params["user"]["email"])

    if @user && @user.password == params["user"]["password"]
      # session = {}
      session[:user_id] = @user.id # => { user_id: 1 }

      redirect_to(clients_path)
    else
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to login_path
  end
end
