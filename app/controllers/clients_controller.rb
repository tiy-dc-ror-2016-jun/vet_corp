class ClientsController < ApplicationController
  before_action :check_for_authorized_user

  def index
    @clients = Client.all

    render :index
  end

end
