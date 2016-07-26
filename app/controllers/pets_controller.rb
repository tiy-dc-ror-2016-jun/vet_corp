class PetsController < ApplicationController
  def index
    @pets = Pet.all

    render :index
  end

  def show
    @pet = Pet.find(params["id"])

    render :show
  end

  def create
    # @pet = Pet.create(name: params["pet"]["name"])
    @pet = Pet.create(pet_params)

    redirect_to "/pets/#{@pet.id}"
  end


  # Allow all keys in a params hash to be passed to an active record model
  #
  private def pet_params
    params["pet"] # {name: "Gridley"}
    params.require("pet").permit!
  end
end