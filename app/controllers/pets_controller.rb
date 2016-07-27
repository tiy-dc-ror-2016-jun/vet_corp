class PetsController < ApplicationController
  def index
    @pets = Pet.all
    @new_pet = Pet.new
    render :index
  end

  def show
    @pet = Pet.find(params["id"])

    render :show
  end

  def edit
    @pet = Pet.find(params["id"])

    render :edit # This happens by default
  end

  def create
    # @pet = Pet.create(name: params["pet"]["name"])
    @pet = Pet.create(pet_params)

    redirect_to "/pets/#{@pet.id}"
  end

  def update
    @pet = Pet.find(params['id'])
    @pet.update(pet_params)
    redirect_to pet_path(id: @pet.id)
  end

  def destroy
    @pet = Pet.find(params["id"])
    @pet.destroy # Removes the record from the DB

    @pet # I am still here until the end of this action

    redirect_to pets_path
  end

  # Allow all keys in a params hash to be passed to an active record model
  #
  private def pet_params
    # Hash style acccess for params
    # params["pet"] # {name: "Gridley"}

    # Strong params requiring a key to be present and allow
    params.require("pet").permit(:name, :species)
  end
end
