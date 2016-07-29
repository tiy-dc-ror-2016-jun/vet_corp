class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.sign_up(params["user"]["email"])

    # THIS IS A HACK, you should take a hash in sign_up and persist if valid
    @user.update(full_name: params["user"]["full_name"])

    if @user.valid?
      redirect_to(clients_path)
    else
      # So we don't lose the knowledge that user made a mistake
      render :new
    end
  end
end
