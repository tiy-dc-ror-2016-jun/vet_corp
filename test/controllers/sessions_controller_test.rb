require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  def test_can_login
    post :create, {user: {email: "johndoe@gmail.com"}}
    refute_equal nil, session[:user_id]
  end

  def test_can_destroy_login
    delete :destroy
    assert_equal nil, session[:user_id]
  end

end
