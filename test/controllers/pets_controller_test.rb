require 'test_helper'

class PetsControllerTest < ActionController::TestCase

  def login_user
    session[:user_id] = users(:john).id
  end

  def setup
    login_user
  end

  test "should get index" do
    response = get :index
    assert_response :success
    assert_includes response.body, "Moose"
  end

  test "should get show" do
    response = get(:show, id: Pet.last.id)
    assert_response :success
  end


  test "can create a pet" do
    response = post :create, {pet: {name: "Moose"}}
    assert_response :redirect
  end

  def test_can_present_edit_page_for_pet
    @pet = Pet.last
    response = get :edit, {id: @pet.id}

    assert_response :success
  end

  def test_can_update_pet
    # Get a pet object that we are going to update
    @pet = Pet.last

    # Send a patch request to the update action with the following params
    response = patch :update, {id: @pet.id, pet: {name: "Changed Name"}}

    # Fetch the newest data from our data base
    @pet.reload

    # Validate that the name changed
    assert_equal "Changed Name", @pet.name
    assert_response :redirect
  end

  def test_can_delete_a_pet
    @pet = Pet.last

    response = delete :destroy, {id: @pet.id}

    assert_response :redirect

    assert_raises ActiveRecord::RecordNotFound do
      @pet.reload
      # or
      # Pet.find(@pet.id)
    end


  end

end










#
