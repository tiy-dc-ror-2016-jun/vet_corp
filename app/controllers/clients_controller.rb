class ClientsController < ApplicationController
  # Lock down all actions in this controller
  # http://guides.rubyonrails.org/action_controller_overview.html#filters
  # there are ways to selctively lock things down as well
  #
  # before_action :check_for_authorized_user, only: [:index]
  #
  # or bypass a before action
  # skip_before_action :check_for_authorized_user, only: [:index]
  # 
  before_action :check_for_authorized_user

  def index
    @clients = Client.all

    render :index
  end

end
