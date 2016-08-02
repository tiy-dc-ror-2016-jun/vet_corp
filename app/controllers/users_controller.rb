class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Generally we extract strong params call in to a reusable private
    # method at the bottom of our controllers,  but these are just mehtods
    # on our params objects, and will work the same without that method.
    @user = User.sign_up(params.require(:user).permit(:email, :password, :full_name, :password_confirmation))

    # THIS IS A HACK, you should take a hash in sign_up and persist if valid
    # @user.update(full_name: params["user"]["full_name"])

    if @user.valid?
      redirect_to(clients_path)
    else
      # So we don't lose the knowledge that user made a mistake
      render :new
    end
  end
end
