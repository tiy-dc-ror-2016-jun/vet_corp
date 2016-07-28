class ClientsController < ApplicationController
  def index
    @clients = Client.all

    render :index
  end
end
