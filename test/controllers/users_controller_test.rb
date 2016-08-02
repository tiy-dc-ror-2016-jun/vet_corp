require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  def test_can_create_a_new_user
    assert_difference "User.count", +1 do
      post :create, {user: {email: "example3@example.com", password: 'password'}}
    end

  end
end
