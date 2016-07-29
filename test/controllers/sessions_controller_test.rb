require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  def test_can_login
    post :create, {user: {email: "johndoe@gmail.com"}}

    # Make sure there is a session ID present
    refute_equal nil, session[:user_id]
  end

  def test_can_destroy_login
    delete :destroy

    # Make sure the session id is set to nil
    assert_equal nil, session[:user_id]
  end
end
