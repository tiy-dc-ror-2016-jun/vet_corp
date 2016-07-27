class VisitsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.build
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @visit = @pet.visits.create!(visit_params)

    redirect_to pet_path(id: @pet.id)
  end

  private def visit_params
    params.require("visit").permit(:notes, :pet_id, :weight_in_kg, :visited_on, :reason)
  end
end
