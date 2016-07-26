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


  def test_can_create_pet
    response = post(:create)
    assert_response :redirect
  end

end
