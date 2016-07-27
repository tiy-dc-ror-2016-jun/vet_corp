require 'test_helper'

class PetsControllerTest < ActionController::TestCase
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

end
